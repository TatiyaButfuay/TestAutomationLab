*** Settings ***
Resource    resource.robot

Suite Setup       Open Registration
Suite Teardown    Close Browser

*** Test Cases ***
UAT_Lab04_002_Empty_First_Name
    Go Registration
    Clear Form
    Fill Form    ${EMPTY}    ${LN}    ${ORG}    ${EMAIL}    ${PHONE_OK}
    Submit
    Error Should Be    *Please enter your first name!!
    Sleep    10s
