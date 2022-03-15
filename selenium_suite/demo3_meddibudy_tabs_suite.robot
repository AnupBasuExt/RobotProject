*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser    browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName    Anup
    Input Text    id=getInTouchEmail    anup@gmail.com
    Input Text    id=getInTouchMobile    7002811066
    Input Text    id=getInTouchDesignation    Intern
    Input Text    id=getInTouchEmpCount    100
    Click Button    xpath=//button[text()='Get in Touch']
    Close Window