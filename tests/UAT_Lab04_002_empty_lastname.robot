*** Settings ***
Resource   resource.robot

Suite Setup     Open Registration
Suite Teardown  Close Browser

*** Test Cases ***
UAT_Lab04_002_Empty_Last_Name
    Go Registration
    Clear Form
    Fill Form    ${FN}    ${EMPTY}    ${ORG}    ${EMAIL}    ${PHONE_OK}
    Submit
    Error Should Be    *Please enter your last name!!
    Sleep    10s