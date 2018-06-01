*** Settings ***
Documentation       Search Google
Library             SeleniumLibrary
Test Teardown       Close Browser


*** Variables ***
${GOOGLE_URL}           https://www.google.com.vn/
${BROWSER}              Chrome
${PROXY}                10.128.10.88:8080
${ARGS}=                Create List          --proxy-server=${PROXY}
${CHROME_OPTION}=       Create Dictionary    args=${ARGS}


*** Test Cases ***
Search Google with "Google Search" button
    Open Google
    Switch to English language
    Enter Keyword       Hello
    Click Search Button


*** Keywords ***
Open Google
    Create WebDriver        ${BROWSER}
    Maximize Browser Window
    Go To                   ${GOOGLE_URL}
    Wait For Condition      return document.title == 'Google'


Switch to English language
    Click Element   xpath://a[contains(text(), 'English')]


Enter Keyword
    [Arguments]     ${keyword}
    Input Text      css:input#lst-ib     ${keyword}


Click Search Button
    Wait Until Page Contains Element    xpath://input[@value="Google Search"][@type="button"]
    Click Element                       xpath://input[@value="Google Search"][@type="button"]
