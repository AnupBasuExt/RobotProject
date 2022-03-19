*** Settings ***
Library     ../python_file/my_script.py

*** Test Cases ***
TC1
    ${my_name}      Get My Name
    Log To Console    ${my_name}
    ${output}       Add Two Number    20    60
    Log To Console    ${output}
    
TC2
    FOR    ${i}    IN RANGE    0    25    1
        Log To Console    ${i}
    END