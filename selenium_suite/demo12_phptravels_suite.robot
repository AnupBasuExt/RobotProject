*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    url=https://phptravels.net/

        Click Element    id=cookie_stop
        Click Element    xpath=//a[contains(text(),'flights')]
        Select From List By Value    id=flight_type     business

        Input Text    xpath=//input[@placeholder="Flying From"]    Los Angeles
        Click Element    xpath=//b[text()='LAX']

        Input Text    xpath=//input[@placeholder="To Destination"]    Dallas
        Click Element    xpath=//b[text()='DAL']
        Input Text    id=departure    30-12-2022
        
        Click Element    xpath=//a[@data-toggle='dropdown']
        Click Element    xpath=//input[@id='fadults']
        Input Text    id=fadults    4

        Click Element    xpath=//input[@id='fchilds']
        Input Text    id=fchilds    2

        Click Element    xpath=//button[@id='flights-search']
        
        Element Should Contain    xpath=//div[@class='section-heading']    LAX
        Element Should Contain    xpath=//div[@class='section-heading']    DAL
        Element Should Contain    xpath=//div[@class='section-heading']    30-12-2022

