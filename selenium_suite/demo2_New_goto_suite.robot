*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser    url=https://www.goto.com/meeting/      browser=chrome       executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    id=truste-consent-button
    Click Element    link=Get a Demo
    Input Text    xpath=//input[@data-sc-field-name='firstName']    Anup
    Input Text    xpath=//input[@data-sc-field-name='lastName']    Basumatary
    Input Text    xpath=//input[@data-sc-field-name='email']    anupbasu7@gmail.com
    Select From List By Label    //select[@data-sc-field-name='employees']      10 - 99
    Click Element    xpath=//input[@type='submit']
    #Close Browser
    [Teardown]      Close Browser
    