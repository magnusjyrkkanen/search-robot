*** Settings ***
Documentation    A simple search robot.
Resource    keywords.resource
Force Tags    rpa

*** Tasks ***
Google search
    Open Browser    https://www.google.com/    chrome
