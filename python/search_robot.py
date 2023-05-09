import random
from selenium import webdriver
from selenium.webdriver.common.by import By
from datetime import datetime

# Variables
url = "https://www.google.com/"
# Wordlist of default search words for the robot.
wordlist = ["korvapuusti", "birch", "Tove Jansson", "Studio Ghibli", "kitten"]


def search_robot(url, wordlist):
    """A simple search robot that uses Google search and takes a screenshot of the results."""
    # Search word.
    search_word = None
    search_word = word_input()
    if search_word is None:
        search_word = choose_search_word(wordlist)

    # Date.
    now = datetime.now()
    year_month_day = now.strftime("%Y_%m_%d")

    # Start Selenium session.
    driver = webdriver.Chrome()

    try:
        # Open browser.
        driver.get(url)
        # Click cookies button.
        cookies_button = driver.find_element(by=By.ID, value="W0wltc")
        cookies_button.click()
        # Find right elements.
        search_box = driver.find_element(by=By.NAME, value="q")
        search_button_div = driver.find_element(by=By.CLASS_NAME, value="FPdoLc")
        search_button = search_button_div.find_element(by=By.NAME, value="btnK")
        # Input text and click button.
        search_box.send_keys(search_word)
        search_button.click()
        # Take screenshot of the results.
        driver.save_screenshot(f"./results/results_{year_month_day}.png")
    finally:
        # Close browser
        driver.quit()


def word_input():
    """Function for getting the search word from user."""
    input_text = "Give a search word or press enter to use one of the default words. "
    word = input(input_text)
    if word:
        return word
    return None


def choose_search_word(wordlist):
    """Function for choosing a word from the default words list."""
    word = random.choice(wordlist)
    return word


if __name__ == "__main__":
    search_robot(url, wordlist)
