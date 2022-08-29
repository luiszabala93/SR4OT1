*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank  ${BROWSER}[0]  ${BROWSER}[1]
    Maximize Browser Window

Load
    Go To           ${URL}
    Sleep           5S

Verify Page Loaded
    Wait Until Page Contains    Welcome

End Web Test
    Close Browser