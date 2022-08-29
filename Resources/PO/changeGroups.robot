*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

*** Variables ***
${APP_DEFAULT}             SR4 OT1 
${NAME_GROUP}              Test4por _Delete
${SELECT_GROUP_TYPE}       SD-SR4CONT

${ADD_GROUP_BUTTON}        xpath=//button[@role="menuitem"]
${GROUPS_LINK}             https://devices.test.omnitracsone.com/#/groups
# ${GROUP_TYPE}              xpath=//mat-select[@name="groupType"]
${GROUP_TYPE}              xpath=//*[@class="mat-select-min-line ng-tns-c82-62 ng-star-inserted"]
# ${GROUP_TYPE}              css=body > device-manager > div.page-content > app-add-group > div > mat-card > mat-card-content > form > mat-form-field.mat-form-field.ng-tns-c60-39.mat-primary.mat-form-field-type-mat-select.mat-form-field-appearance-outline.mat-form-field-can-float.mat-form-field-has-label.mat-form-field-hide-placeholder.ng-pristine.ng-star-inserted.ng-invalid.mat-form-field-invalid.ng-touched > div > div.mat-form-field-flex.ng-tns-c60-39
${NAME_TEXBOX}             xpath=//input[@name="name"]
${OK_BUTTON}               css=body > div.swal2-container.swal2-center.swal2-backdrop-show > div > div.swal2-actions > button.swal2-confirm.mat-raised-button.confirm-swal-button
${SAVE_BUTTON}             css=body > device-manager > div.page-content > app-add-group > div > div > button
${SUCCES_MESSAGE}          Group is created.
${VERTICAL_DOTS_BUTTON}    css=body > device-manager > div.page-content > app-group-list > div > div.header-content > div:nth-child(2) > button

*** Keywords ***
Select Groups Page
    Go To                         ${GROUPS_LINK} 
    Wait Until Page Contains      Device Groups

Add New Group
    Click Button                  ${VERTICAL_DOTS_BUTTON}
    Sleep                         1S
    Click Button                  ${ADD_GROUP_BUTTON}
    Wait Until Page Contains      Group Info

Select Items
    Input Text                    ${NAME_TEXBOX}  ${NAME_GROUP}
    # Click Button                  ${GROUP_TYPE}
    Select From List By Index     ${GROUP_TYPE}  5
    # Select From List By Label     groupType    SD-SR4CONT
    Execute Manual Step           Do something manually!

Save Group
    Click Button                  ${SAVE_BUTTON}
    Wait Until Page Contains      ${SUCCES_MESSAGE}
    Click Button                  ${OK_BUTTON}
    Wait Until Page Contains      ${APP_DEFAULT}
    Sleep                         5S

