*** Settings ***
Library     SeleniumLibrary
Library    AutoItLibrary

Test Teardown       Close Browser

*** Test Cases ***

TC1
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        #Go To    url=https://softwaretesting.com/
        Go To    url=https://john:john123@softwaretesting.com

TC2
     Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    30s
        Go To    url=https://softwaretesting.com/
        Sleep    5s
        Send     Anup
        Send     {TAB}
        Send     pass1234
        Send     {ENTER}

