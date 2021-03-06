*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC2
    Create Directory    E:${/}Temp${/}My_folder
    Create File    E:${/}Temp${/}My_folder${/}notes.txt     Anup
    #copy file
    Copy File    E:${/}Temp${/}My_folder${/}notes.txt    E:${/}Temp${/}My_folder${/}n.txt
    Sleep    5s
    #remove file
    Remove File    E:${/}Temp${/}My_folder${/}notes.txt
    #remove directory
    Remove Directory    E:${/}Temp${/}My_folder     True
    
TC3
    Create Directory    E:${/}LT_Technology_Services${/}Robot_Session${/}Robot_project${/}new_folder
   
TC4
    Create Directory    ${EXECDIR}${/}new_folder
    Create File    ${EXECDIR}${/}new_folder${/}file.txt     Anup Basumatary
    File Should Exist    ${EXECDIR}${/}new_folder${/}file.txt