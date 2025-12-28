*** Settings ***
Resource   resource.robot

Suite Setup     Open Registration
Suite Teardown  Close Browser

*** Test Cases ***
UAT_Lab04_002_Empty_Email
    Go Registration
    Clear Form
    Fill Form    ${FN}    ${LN}    ${ORG}    ${EMPTY}    ${PHONE_OK}
    Submit
    Error Should Be    *Please enter your email!!
    Sleep    10s