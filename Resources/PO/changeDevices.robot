*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ACCOUNT_BUTTON}    css=body > device-manager > div.page-content > device-home > div > div:nth-child(1) > div:nth-child(2) > account-switch > button
${ACCOUNT_LLC}       Omnitracs, LLC
${ACCOUNT_LINK}      css=body > device-manager > div.page-content > device-home > div > div:nth-child(1) > div:nth-child(2) > account-switch > mat-sidenav-container > mat-sidenav > div > mat-list > mat-list-item > div > div.mat-list-text
${DEVICES_LINK}      https://devices.test.omnitracsone.com/#/home
${SEARCH_BAR}        xpath=//input[@data-placeholder='Search']

*** Keywords ***
Select Devices Page
    # Click Button                    ${DEVICES_LINK} 
    Go To                         ${DEVICES_LINK} 
    Wait Until Page Contains      Devices

Change Account
    Click Button                  ${ACCOUNT_BUTTON}
    Wait Until Page Contains      Customer Account
    Input Text                    ${SEARCH_BAR}  ${ACCOUNT_LLC}
    Press Keys                    ${SEARCH_BAR}    ENTER
    Wait Until Page Contains      Search Results
    Click Element                 ${ACCOUNT_LINK}
    Sleep                         3S
