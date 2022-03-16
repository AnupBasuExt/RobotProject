*** Settings ***
Library     SeleniumLibrary

Test Teardown      Close Browser

*** Test Cases ***

TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    ${alert_text}    Handle Alert        action=ACCEPT   timeout=50s
    Log To Console    ${alert_text}

    #Validation
    Should Be Equal    ${alert_text}    Customer ID${SPACE} cannot be left blank.


TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    xpath=//a[@id='edit-submitted-contact-person-for-nasscom-email-id-cp']
    ${alert}    Handle Alert    action=ACCEPT   timeout=20s
    Log To Console    ${alert}

    #Validation
    Should Be Equal    ${alert}    Please enter amount in digit and greater than zero.
