import random

# Wordlist of default search words for the robot.
wordlist = ["korvapuusti", "birch", "Tove Jansson", "Studio Ghibli", "kitten"]


def search_robot(wordlist):
    """A simple search robot that uses Google search and takes a screenshot of the results."""
    search_word = None
    search_word = word_input()
    if search_word is None:
        search_word = choose_search_word(wordlist)
    try:
        pass
    finally:
        print(search_word)


def word_input():
    """Method for getting the search word from user."""
    input_text = "Give a search word or press enter to use one of the default words. "
    word = input(input_text)
    if word:
        return word
    return None


def choose_search_word(wordlist):
    word = random.choice(wordlist)
    return word


if __name__ == "__main__":
    search_robot(wordlist)
