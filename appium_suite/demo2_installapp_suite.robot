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
    ...     app=bs://083d80d7eb728c97e25df390794a3cb45dbf0969
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=Car Info Test

    Sleep    4s
    ${src}   Get Source
    Log To Console     ${src}