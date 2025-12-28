*** Settings ***
Resource   resource.robot

Suite Setup     Open Registration
Suite Teardown  Close Browser

*** Test Cases ***
UAT_Lab04_002_Invalid_Phone
    Go Registration
    Clear Form
    Fill Form    ${FN}    ${LN}    ${ORG}    ${EMAIL}    ${PHONE_BAD}
    Submit
    Error Should Be    Please enter a valid phone number!!
    Sleep    10s