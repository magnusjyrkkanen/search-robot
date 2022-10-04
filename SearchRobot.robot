*** Settings ***
Documentation    A simple search robot that uses Google search.
Resource    keywords.resource
Force Tags    rpa

*** Tasks ***
Google search
    Open Browser    https://www.google.com/    chrome
