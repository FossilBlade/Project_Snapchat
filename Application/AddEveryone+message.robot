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
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
Added 10
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
Added 20
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
Added 30
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
Added 40
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
        AddAnyoneMessage      ${AddAnyoneText}
Added 50