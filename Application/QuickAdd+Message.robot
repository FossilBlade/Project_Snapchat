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
QuickAdd+Message
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
QuickAdded 10
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
QuickAdded 20
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
QuickAdded 30
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
QuickAdded 40
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
    QuickaddproccesMessage      ${QuickAddText}
QuickAdded 50