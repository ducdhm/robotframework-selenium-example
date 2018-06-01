*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${GOOGLE_URL}           https://www.google.com.vn/
${BROWSER}              Chrome
${PROXY}                10.128.10.88:8080
${ARGS}=                Create List          --proxy-server=${PROXY}
${CHROME_OPTION}=       Create Dictionary    args=${ARGS}


*** Test Cases ***
Search Google
    Open Google
#    Add jQuery
    Enter Keyword    Hello
    Hide Security Popup
    Click Search Button
#    Click Lucky Button
#    [Teardown]    Close Browser


*** Keywords ***
Open Google
    Create WebDriver        ${BROWSER}
    Maximize Browser Window
    Go To                   ${GOOGLE_URL}
    Wait For Condition      return document.title == 'Google'


Add jQuery
    Execute Javascript      alert('a')
    Execute Javascript      var headID = document.getElementsByTagName('head')[0];var newScript = document.createElement('script');newScript.type='text/javascript';newScript.src='http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js';headID.appendChild(newScript);
    Execute Javascript      alert('b')


Enter Keyword
    [Arguments]     ${keyword}
    Input Text      css:input#lst-ib     ${keyword}


Hide Security Popup
    Click Element   xpath://a[contains(text(), 'KHÔNG, CẢM ƠN')]


Click Search Button
    Click Element   xpath://a[contains(text(), 'Tìm với Google')]


Click Lucky Button
    Wait Until Page Contains Element    jquery:input["value"="I'm Feeling Lucky"]
    Click Element                       jquery:input["value"="I'm Feeling Lucky"]