*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Input Text    xpath=//input[@type='text']    test123
    Click Element    link=CONTINUE