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
QuickAdd
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
Quickadded 10
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
Quickadded 20
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
Quickadded 30
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
Quickadded 40
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
    Quickaddprocces
Quickadded 50