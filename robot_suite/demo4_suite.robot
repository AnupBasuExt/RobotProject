*** Settings ***
Library    Collections
*** Variables ***
${MY_NAME}  AnupBasu
@{COLORS}   Orange  Green   White   Black

*** Test Cases ***
TC1
    Set Local Variable    ${name}   Anup
    Log To Console    ${name}
    
    
    #scalar variable
    ${val}      Set Variable        Basu
    Log To Console    ${name}
    
    Log To Console    ${MY_NAME}
    
TC2
    Log To Console    ${MY_NAME}
    
TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

TC4
    #create list locally
    @{mylist}   Create List     a   b   c   d
    Log To Console    ${mylist}
    Log To Console    ${mylist}[1]

    #Remove value
    Remove Values From List     ${mylist}   c
    Log To Console    ${mylist}

    #Append or add item in end of list
    Append To List    ${mylist}     z   x
    Log To Console    ${mylist}
    
    #Insert
    Insert Into List    ${mylist}    2    o
    Log To Console    ${mylist}
    
    Log List    ${mylist}
    
