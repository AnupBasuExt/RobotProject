*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=http://google.com/
    ${link_count}       Get Element Count    tag=a
    Log To Console    ${link_count}

    #    Click Element    ${elements}[0]
    ${text}     Get Text    ${elements}[0]
    Log To Console    ${text}


    FOR    ${i}    IN RANGE    0    25    1
         ${text}     Get Text    ${elements}[${i}]
         Log To Console    ${text}
    END

    FOR    ${element}    IN    @{elements}
        ${text}     Get Text    ${element}
         Log To Console    ${text}
         Run Keyword If    '${text}'=='Images'      Click Element    ${element}
         Exit For Loop If    '${text}'=='Images'
    END

