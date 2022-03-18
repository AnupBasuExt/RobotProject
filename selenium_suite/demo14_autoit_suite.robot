*** Settings ***
Library     SeleniumLibrary
Library    AutoItLibrary

Test Teardown       Close Browser

*** Test Cases ***

TC1
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    url=https://www.ilovepdf.com/pdf_to_word
#       selenium
#       Choose File    xpath=//input[@type='file']     D:${/}file.pdf
        Click Element    xpath=//span[text()='Select PDF file']
        Sleep    1s
        Control Focus       Open    ${EMPTY}    Edit1
        Sleep    1s
        Control Set Text    Open    ${EMPTY}    Edit1      C:${/}Users${/}Lenovo${/}Desktop${/}Document 2.pdf
        Sleep    1s
        Control Click   Open    ${EMPTY}    Button1