*** Settings ***
Library     SeleniumLibrary

Test Teardown   Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    ${text}     Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${text}
    Should Be Equal    ${text}    The most popular open-source Electronic Health Record and Medical Practice Management solution.
    
    ${placeholder}      Get Element Attribute    id=authUser    placeholder
    Log To Console    ${placeholder}