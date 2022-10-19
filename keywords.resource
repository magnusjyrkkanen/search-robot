*** Settings ***
Documentation    This is a resource file, that contains keywords, libraries, and variables.
Library    SeleniumLibrary
Library    random

*** Variables ***
${SEARCH_WORD}    ${EMPTY}
@{WORD_LIST}    korvapuusti    birch    Tove Jansson    Studio Ghibli    kitten

*** Keywords ***
Get Search Word
    [Arguments]    @{WORD_LIST}
    ${WORD}=    Evaluate    random.choice(@{WORD_LIST})
    RETURN    ${WORD}
