*** Settings ***
Library	     AppiumLibrary
Library       JSONLibrary
Library       os
Library       Collections
Resource     ../Resources/Android-res.robot

*** Test Cases ***
Loading Settings
    Load Settings
Login
    Open Snapchat Application
    wait until page contains element        ${LOGIN-BUTTON-START}
    Login-prosses       ${UserName}     ${Password}
Home
    Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
    Click-HomeTab
    Quick-Add
    press keycode       4
    Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
    Click-HomeTab
Add Everyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
Added 10
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
Added 20
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
Added 30
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
Added 40
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
        AddAnyone
Added 50