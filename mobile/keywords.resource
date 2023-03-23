*** Settings ***
Documentation    This is a resource file, that contains keywords, libraries, and variables.
Library    AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2

${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=23}

*** Keywords ***
