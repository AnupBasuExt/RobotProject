*** Settings ***
Library    Telnet
*** Test Cases ***

TC1 Print My Name
    Log To Console  Anup
    Log To Console    Hello guys

TC2
    Log To Console    Basumatary
    Log    Hello

TC3
    ${session_name}     Set variable    Robot Session
    Log To Console    ${session_name}
    Log To Console    session name is ${session_name}

#in tc4, store 25 and 26 in ${var1} and ${var2}
TC4
    ${var1}     Set Variable    25
    ${var2}     Set Variable    26
    ${result}   Evaluate    ${var1}+${var2}
    Log To Console    ${result}

TC5
    ${radius}       Set Variable    10
#calculate area of circle and print- 3.14
    ${result}       Evaluate    3.14*${radius}*${radius}
    Log To Console    ${result}