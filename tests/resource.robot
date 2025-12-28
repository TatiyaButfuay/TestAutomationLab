*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}     http://localhost:7272
${URL_REG}      ${BASE_URL}/StarterFiles/Registration.html
${BROWSER}      chrome

${FN}           Somyod
${LN}           Sodsai
${ORG}          CS KKU
${EMAIL}        somyod@kkumail.com

${PHONE_OK}     091-001-1234
${PHONE_BAD}    1234


*** Keywords ***
Open Registration
    Open Browser    ${URL_REG}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Workshop Registration    5s
    Title Should Be    Registration

Go Registration
    Go To    ${URL_REG}
    Wait Until Page Contains    Workshop Registration    5s
    Title Should Be    Registration

Clear Form
    Clear Element Text    id=firstname
    Clear Element Text    id=lastname
    Clear Element Text    id=organization
    Clear Element Text    id=email
    Clear Element Text    id=phone

Fill Form
    [Arguments]    ${fn}    ${ln}    ${org}    ${email}    ${phone}
    IF    '${fn}' != '${EMPTY}'    Input Text    id=firstname    ${fn}
    IF    '${ln}' != '${EMPTY}'    Input Text    id=lastname     ${ln}
    IF    '${org}' != '${EMPTY}'   Input Text    id=organization ${org}
    IF    '${email}' != '${EMPTY}' Input Text    id=email        ${email}
    IF    '${phone}' != '${EMPTY}' Input Text    id=phone        ${phone}

Submit
    Click Button    id=registerButton

Error Should Be
    [Arguments]    ${msg}
    Element Text Should Be    id=errors    ${msg}

Success Page Should Be Shown
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
