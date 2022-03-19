*** Comments ***
https://drive.google.com/drive/u/0/folders/13tj-zZP-XaaUp8z5B6c3cZOfsqZGn3If

Upload apk -  https://app-automate.browserstack.com/dashboard/v2/getting-started?source=%27home%27

to view video - https://app-automate.browserstack.com/dashboard/v2/builds/62172b12fd7c1dd956e0e85b7ff0e49e26e03659

*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=anupbasumatary_XRbxOl
    ...     browserstack.key=s7moCBAqAaoqMX8iNDRt
    ...     app=bs://94a13cc12fb696d0b8deb786062b38bf2d69daa9
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=khan academy
    #provide xpath in //*
    Wait Until Page Contains Element    //*
    Click Element    //*
    Sleep    2s
    Close Application