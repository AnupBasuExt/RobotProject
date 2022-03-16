*** Variables ***
&{DETAILS}  firstname=Anup  lastname=Basu   mobile=70007

*** Test Cases ***
TC1
    Log To Console    ${DETAILS}
    Log To Console    ${DETAILS}[firstname]
    Log To Console    ${DETAILS}[lastname]

