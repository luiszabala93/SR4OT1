*** Settings ***
Documentation  Device Manager Login
Library  SeleniumLibrary

*** Variables ***
${EMAIL_BAR}        css=body > app-root > app-login-process > div > div > div.col-12.col-sm-12.col-md-12.col-lg-7.left-pan-content > div:nth-child(2) > div > app-provide-user-id > div > div.padding-top-20 > div > form > div.custom-width > div.input-group.mb-3 > input
${NEXT_BUTTON}      css=body > app-root > app-login-process > div > div > div.col-12.col-sm-12.col-md-12.col-lg-7.left-pan-content > div:nth-child(2) > div > app-provide-user-id > div > div.padding-top-20 > div > form > div.custom-width > div.padding-top-20 > button
${PASS_BAR}         css=body > app-root > app-login-process > div > div > div.col-12.col-sm-12.col-md-12.col-lg-7.left-pan-content > div:nth-child(2) > div > app-provide-password > div > div:nth-child(3) > div > form > div.custom-width > div.input-group.mb-3 > input
${LOGIN_BUTTON}     css=body > app-root > app-login-process > div > div > div.col-12.col-sm-12.col-md-12.col-lg-7.left-pan-content > div:nth-child(2) > div > app-provide-password > div > div:nth-child(3) > div > form > div.custom-width > div.padding-top-20 > button

*** Keywords ***
Login With Valid Credentials
    Input Text                    ${EMAIL_BAR}    ${LOGIN_EMAIL}
    Click Button                  ${NEXT_BUTTON}
    Wait Until Page Contains      Password
    Input Text                    ${PASS_BAR}    ${LOGIN_PASS}
    Click Button                  ${LOGIN_BUTTON}
    Sleep                         10S
    Wait Until Page Contains      Dashboard