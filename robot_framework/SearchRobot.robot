*** Settings ***
Documentation    A simple search robot that uses Google search and takes a screenshot of the results.
Resource    keywords.resource
Force Tags    rpa

*** Tasks ***
Google Search
    IF  '${SEARCH_WORD}' == '${EMPTY}'
        ${SEARCH_WORD}=    Choose Search Word    @{WORD_LIST}
    END

    Open Browser    https://www.google.com/    chrome
    Click Button    id=W0wltc
    Wait Until Page Contains Element    name=q
    Input Text    name=q    ${SEARCH_WORD}
    Click Button    class=FPdoLc >> name=btnK
    Capture Element Screenshot    id=main    ${OUTPUT DIR}/results_{index}.png
    [Teardown]    Close Browser
