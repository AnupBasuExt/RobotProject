*** Comments ***
https://drive.google.com/drive/u/0/folders/13tj-zZP-XaaUp8z5B6c3cZOfsqZGn3If

*** Settings ***
Library     AppiumLibrary

Test Teardown       Close Application

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=dinakaranbalaji1
    ...     browserstack.key=6yXRE4nK1fyvTHWA2kPD
    ...     app=bs://cf329e819caac4e60bd321162ee47729a957ae3a
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=Car Info Test 1


    Wait Until Page Contains Element    xpath=//*[@text='Pay Road Tax']       timeout=50s
    Click Element    xpath=//*[@text='Pay Road Tax']
    Sleep    2s
    Swipe By Percent    50    75    50    25

    Swipe By Percent    50    75    50    25

    FOR    ${i}    IN RANGE    1    99    1

        @{result}   Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Pay Road Tax']
        Swipe By Percent    50    75    50    25

        Exit For Loop If    '${result}[0]'=='PASS'

    END