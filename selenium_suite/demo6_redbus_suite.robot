*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.redbus.in/
    Click Element    id=signin-block
    Click Element    id=signInLink
    Input Text    id=mobileNoInp    78945