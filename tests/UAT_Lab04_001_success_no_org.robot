*** Settings ***
Resource   resource.robot

Suite Setup     Open Registration
Suite Teardown  Close Browser

*** Test Cases ***
UAT_Lab04_001_Register_Success_No_Organization
    Go Registration
    Clear Form
    Fill Form    ${FN}    ${LN}    ${EMPTY}    ${EMAIL}    ${PHONE_OK}
    Submit
    Success Page Should Be Shown
    Sleep    10s