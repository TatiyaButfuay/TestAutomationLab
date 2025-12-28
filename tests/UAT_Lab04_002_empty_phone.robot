*** Settings ***
Resource   resource.robot

Suite Setup     Open Registration
Suite Teardown  Close Browser

*** Test Cases ***
UAT_Lab04_002_Empty_Phone
    Go Registration
    Clear Form
    Fill Form    ${FN}    ${LN}    ${ORG}    ${EMAIL}    ${EMPTY}
    Submit
    Error Should Be    *Please enter your phone number!!
    Sleep    10s