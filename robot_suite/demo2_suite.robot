*** Settings ***
Library     DateTime

*** Test Cases ***
TC1
    ${current_date}     Get Current Date
    Log To Console    ${current_date}
    Log    ${current_date}