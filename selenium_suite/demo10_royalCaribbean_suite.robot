*** Comments ***
1. Navigate https://www.royalcaribbean.com/account/
2. Click on create an account
3. Enter first name
4. Enter last name
5. Month as April
6. Day as 4
7. year as 1992

*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    link=Create an account
    Input Text    xpath=//input[@data-placeholder='First name/Given name']    Anup
    Input Text    xpath=//input[@data-placeholder='Last name/Surname']    Basu
    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),' April ')]
    Click Element    xpath=//span[text()='Day']
    Click Element    xpath=//span[contains(text(),' 4 ')]
    Input Text    xpath=//input[@data-placeholder='Year']    1992