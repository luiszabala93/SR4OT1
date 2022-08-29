*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/changeDevices.robot
Resource  ../Resources/PO/changeGroups.robot


*** Keywords ***
Login
    SignIn.Login With Valid Credentials

Change Devices
    changeDevices.Select Devices Page
    changeDevices.Change Account

Add Group
    changeGroups.Select Groups Page
    changeGroups.Add New Group
    changeGroups.Select Items
    changeGroups.Save Group
    