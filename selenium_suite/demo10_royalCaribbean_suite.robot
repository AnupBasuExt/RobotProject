*** Comments ***
1. Navigate https://www.royalcaribbean.com/account/
2. Click on create an account
3. Enter first name
4. Enter last name
5. Month as April
6. Day as 4
7. year as 1992
8.choose-country-India
9.Security Question - which elementary school do yo go to?
10.Answer
11.Click checkbox

*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    link=Create an account
    Input Text    xpath=//input[@data-placeholder='First name/Given name']    Anup
    Input Text    xpath=//input[@data-placeholder='Last name/Surname']    Basu
    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[text()='Day']
    #Scroll Element Into View    xpath=//span[contains(text(),'26')] use if the number is not selected,can use greater number than click element
    Click Element    xpath=//span[contains(text(),'4')]
    Input Text    xpath=//input[@data-placeholder='Year']    1992
    Click Element    xpath=//span[text()='Country/Region of residence']
    Click Element    xpath=//span[contains(text(),'India')]
    Input Text    xpath=//input[@data-placeholder='Email address']    anup@gmail.com
    Click Element    xpath=//span[text()='Select one security question']
    Click Element    xpath=//span[contains(text(),'What elementary school did you go to?')]
    Input Text    xpath=//input[@data-placeholder='Answer']    MMVM
    Click Element    xpath=//span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']
