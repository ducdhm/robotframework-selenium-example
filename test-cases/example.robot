*** Settings ***
Documentation       Search Google
Library             SeleniumLibrary
Test Teardown       Close Browser
Resource            ../resources/variables.robot
Resource            ../resources/keywords.robot


*** Test Cases ***
Search Google with "Google Search" button via Chrome
    Open Url With Chrome            ${GOOGLE_URL}
    Switch to English language
    Enter Keyword                   Github
    Click Search Button
    Wait Until Element Is Visible   css:div#rso
    Page Should Contain Element     xpath://cite[contains(text(), "https://github.com/")]

Search Google with "Google Search" button via Firefox
    Open Url With Firefox           ${GOOGLE_URL}
    Switch to English language
    Enter Keyword                   Github
    Click Search Button
    Wait Until Element Is Visible   css:div#rso
    Page Should Contain Element     xpath://cite[contains(text(), "https://github.com/")]


*** Keywords ***
Switch to English language
    Click Element   xpath://a[contains(text(), "English")]

Enter Keyword
    [Arguments]     ${keyword}
    Input Text      xpath://input[@name="q"]     ${keyword}

Click Search Button
    Wait Until Element Is Visible       xpath://input[@value="Google Search"]
    Click Element                       xpath://input[@value="Google Search"]
