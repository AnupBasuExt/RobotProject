*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    #Sleep    5s
    Click Element    link=Logout

TC2
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    Anup Basumatary
    Input Text    id=emgcontacts_relationship    Brother
    Input Text    id=emgcontacts_homePhone    7002811055
    Click Element    id=btnSaveEContact




