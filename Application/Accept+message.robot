*** Settings ***
Library	      AppiumLibrary
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
    Add-accept-friends
    press keycode       4
    Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
    Click-HomeTab
Accept Friends
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
Accept 10 Friends
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
Accept 20 Friends
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
Accept 30 Friends
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
Accept 40 Friends
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
    ProccesacceptMessage       ${AcceptText}
Accept 50 Friends
