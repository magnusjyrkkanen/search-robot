*** Settings ***
Documentation    A simple search robot that uses Google search.
Resource    keywords.resource
Force Tags    rpa

*** Tasks ***
Google search
    Open Browser    https://www.google.com/    chrome
    Click Button    id=W0wltc
    Wait Until Page Contains Element    name=q
    Input Text    name=q    ${SEARCH_WORD}
    Click Button    class=FPdoLc >> name=btnK
    Capture Element Screenshot    id=main    ${OUTPUT DIR}/results_{index}.png
    [Teardown]    Close Browser
