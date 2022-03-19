*** Comments ***
https://drive.google.com/drive/u/0/folders/13tj-zZP-XaaUp8z5B6c3cZOfsqZGn3If

Upload apk -  https://app-automate.browserstack.com/dashboard/v2/getting-started?source=%27home%27

to view video - https://app-automate.browserstack.com/dashboard/v2/builds/62172b12fd7c1dd956e0e85b7ff0e49e26e03659

inspector - https://github.com/appium/appium-inspector/releases/tag/v2022.2.1

*** Settings ***
Library     AppiumLibrary

Test Teardown       Close Application

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=dinakaranbalaji1
    ...     browserstack.key=6yXRE4nK1fyvTHWA2kPD
    ...     app=bs://41fa75bf95dbde7363c9623ad02ab105da7fd21e
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=khan academy Login

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']       timeout=50s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']      timeout=50s
    Click Element    xpath=//*[@content-desc='Settings']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']       timeout=50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']       timeout=50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']       timeout=50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'e-mail address')]       timeout=50s
    Input Text    xpath=//*[contains(@text,'e-mail address')]    bala@gmail.com

    Wait Until Page Contains Element    xpath=//*[@text='Password']        timeout=50s
    Input Text    xpath=//*[@text='Password']     bala123

    Sleep    2s
    Wait Until Page Contains Element    xpath=(//*[@text='Sign in'])[2]      timeout=50s
    Click Element    xpath=(//*[@text='Sign in'])[2]

    Sleep    2s
    Page Should Contain Text    There was an issue signing in
    Element Text Should Be    //*[contains(@text,'issue')]    There was an issue signing in
    Capture Page Screenshot