*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    #Page Should Contain    Twitter
    Click Element    partial link=phpMyAdmin
    Switch Window       phpMyAdmin
    Input Text    id=input_username    Admin
    Input Text    id=input_password    admin123
    Click Element    xpath=//input[@type='submit']
    Element Should Contain    xpath=//button[@type='submit']    Access denied for user