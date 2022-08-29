*** Settings ***
Documentation  Validate SR4OT1 app as an application to be added by default for SD-SR4CONT groups, When a group of SD-SR4CONT is added, by default, the SR4OT1 app (SROT) must be added
Resource  ../Resources/common.robot
Resource  ../Resources/guiSR4OT1.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
@{BROWSER}        Chrome  options=addArguments("--incognito")
${URL}            https://devices.test.omnitracsone.com/
${LOGIN_EMAIL}    adamatspeedy@gmail.com
${LOGIN_PASS}     Omnitracs17

*** Test Cases ***
Validate SR4OT1 app as an application to be added by default for SD-SR4CONT groups
    common.Load
    common.Verify Page Loaded
    guiSR4OT1.Login
    # guiSR4OT1.Change Devices
    guiSR4OT1.Add Group
    
