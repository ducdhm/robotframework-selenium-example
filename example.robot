*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${GOOGLE_URL}           https://www.google.com.vn/
${BROWSER}              Chrome
${PROXY}                10.128.10.88:8080
#${ARGS}=                Create List          --proxy-server=${PROXY}
#${CHROME_OPTION}=       Create Dictionary    args=${ARGS}


*** Test Cases ***
Search Google
    Open Google
    Wait For Condition    return document.title == 'Google'
#    Enter Keyword    Hello
#    Click Search Button
#    Click Lucky Button
#    [Teardown]    Close Browser


*** Keywords ***
Open Google
    ${ARGS}=                Create List          --proxy-server=${PROXY}
    ${CHROME_OPTION}=       Create Dictionary    args=${ARGS}
    Create WebDriver    ${BROWSER}      chrome_options=${CHROME_OPTION}
    Go To               ${GOOGLE_URL}
    Title Should Be    Google

Enter Keyword
    [Arguments]    ${keyword}
    Input Text    jquery:input#lst-ib    ${keyword}

Click Search Button
    Click Element   jquery:input:submit["value"="Google Search"]


Click Lucky Button
    Wait Until Page Contains Element   jquery:input["value"="I'm Feeling Lucky"]
    Click Element   jquery:input["value"="I'm Feeling Lucky"]