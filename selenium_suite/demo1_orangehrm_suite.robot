*** Settings ***

Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome




