*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Text    id=clearPass    pass
    Select From List By Value    xpath=//select[@class='form-control']      18
    Click Element    xpath=//button[@type='submit']
    Click Element    xpath=//div[contains(text(),'Messages')]
    Select Frame    xpath=//iframe[@name="msg"]
    Click Element    Link=Add New
    Select From List By Value    id=form_note_type    Pharmacy
    Select From List By Label    name=form_message_status   Forwarded
    Select From List By Value    id=users       zhportal
    Input Text    id=note    Hello
    Click Button    id=newnote
    #Validate the error message - Please choose a patient
    Element Text Should Be    id=error_reply_to    Please choose a patient
    Unselect Frame
    [Teardown]      Close Browser