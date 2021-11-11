*** Settings ***
Library	     AppiumLibrary
Library           String

*** Variables ***



#*** Login / sign up***
${LOGIN-BUTTON-START}     id=com.snapchat.android:id/login_button_horizontal

#*** Login Page ***
${LOGIN-EMAIL-FIELD}        id=com.snapchat.android:id/username_or_email_field
${PASSWORD-FIELD}           id=com.snapchat.android:id/password_field
${LOGIN-BUTTON}             id=com.snapchat.android:id/nav_button

#*** Main Page ***
${MAIN-HOME-TAB}            id=com.snapchat.android:id/neon_add_friend_button_container
${ADD-FRIENDS-ACCEPT}       id=com.snapchat.android:id/add_friend_page

#***    add fiends  ***
${ADD-ME}        id=com.snapchat.android:id/add_friends_recycler_view
${ADDED-ME}      //android.view.View[contains(@text,"avatar")]
${ADDED-ME1}     //javaClass[@text="Added Me"]
${ADDED-ME2}     //javaClass[contains(@text,"Added Me")]


#***    add friend      ***
${ACCEPT-FRIEND}     id=com.snapchat.android:id/add_friend_button
${CLICKCHAT}        id=com.snapchat.android:id/ngs_chat_icon_container
${CHAT}             id=com.snapchat.android:id/chat_input_text_field
${ZONDIAC}          id=com.snapchat.android:id/profile_header_zodiac

${TEXT}             id=com.snapchat.android:id/chat_input_text_field
${MESSAGE}          id=com.snapchat.android:id/chat_message_content_container

${BACK}             id=com.snapchat.android:id/back_button

#***    Quick-Add   ***
${QUICKADD}         //javaClass[@text="Quick Add"]
${QUICKADD1}        //javaClass[contains(@text,"Quick Add")]
${WAITADD}          id=com.snapchat.android:id/ghost_face_view
${ADDFRIEND}        id=com.snapchat.android:id/add_friend_button
${CLOSEBUTTON}      id=com.snapchat.android:id/profile_header_close_button
${CLOSEMAIN}        id=com.snapchat.android:id/subscreen_top_left
${CHATCLICK}        id=com.snapchat.android:id/icon

#***    Story    ***
${MEMORIES}             id=com.snapchat.android:id/ngs_memories_icon
${CAMERAROLL}           //android.widget.TextView[@text="Camera Roll"]
${FOTO}                 id=com.snapchat.android:id/camera_roll_image_view
${SENDSNAP}             id=com.snapchat.android:id/send_button
${MYSTORY}              //javaClass[@text="My Story"]
${SENDSNAPSTORY}        id=com.snapchat.android:id/send_to_bottom_panel_send_button
${ADDEDTOSTORYSUCCES}   id=com.snapchat.android:id/status_bar_secondary_text
${ADDEDTOSTORYSUCCES1}   //android.widget.TextView[@text="Added to Story"]

#***    AddEverything   ***
${PROFILESTATUS}     id=com.snapchat.android:id/profile_header_status_icon
${CHATADDED}         id=com.snapchat.android:id/back_button

#***    Disable messages    ***
${NOTIFICATION}     id=com.snapchat.android:id/notification_view
${StoryPhoto}       xpath=//android.view.ViewGroup[@index='1']

#***    addfriends      ***
${ACTIONMENU}       //android.widget.TextView[@text="Accept Friend"]
${ACTIONMENU1}       //android.widget.TextView[@text="Add Friend"]

*** Keywords ***

Open Snapchat Application
    open application    http://localhost:4723/wd/hub    platformName=Android        autoGrantPermissions=true    deviceName=emulator-5554    appPackage=com.snapchat.android     appActivity=com.snap.mushroom.MainActivity    automationNama=Uiavtomator2
Login user
    wait until page contains element        ${LOGIN-BUTTON-START}
    click element    ${LOGIN-BUTTON-START}
User email/name
    [Arguments]     ${UserName}
    wait until page contains element        ${LOGIN-EMAIL-FIELD}
    input text      ${LOGIN-EMAIL-FIELD}    ${UserName}
Input user password
        [Arguments]     ${Password}
        input text      ${PASSWORD-FIELD}       ${Password}
Submit login
        click element   ${LOGIN-BUTTON}
        set appium timeout      20
verify login is sucessful
        wait until page contains element        ${MAIN-HOME-TAB}

Login-prosses
        [Arguments]     ${UserName}     ${Password}
        Login user
        User email/name         ${UserName}
        Input user password     ${Password}
        Submit login
        verify login is sucessful


Click-HomeTab
        click element    ${MAIN-HOME-TAB}


Add-accept-friends
        wait until page contains element        ${ADDED-ME1}
        wait until page contains element        ${ADDED-ME2}
        wait until page contains element        ${ADDED-ME}
Accept-friends
        click element      ${ADDED-ME}
        wait until page contains element        ${ACCEPT-FRIEND}
        click element       ${ACCEPT-FRIEND}
        set appium timeout      10
Messgae-friend
        [Arguments]     ${AcceptText}
        click element   ${CLICKCHAT}
        wait until page contains element        ${CHAT}
        input text      ${TEXT}                 ${AcceptText}
        Press keycode           66
        wait until page contains element        ${CHATADDED}
        wait until page contains element        ${BACK}
        click element       ${BACK}
Quick-Add
        wait until page contains element        ${QUICKADD}
        wait until page contains element        ${QUICKADD1}
        wait until page contains element        ${ADDED-ME}
Quickaddprocces
        Quick-Add
        set appium timeout      10
        Long Press      ${ADDED-ME}
        wait until page contains element        ${ACTIONMENU1}
        click element       ${ACTIONMENU1}
        set appium timeout      10
        Quick-Add
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        Click-HomeTab


QuickaddproccesMessage
        [Arguments]     ${QuickAddText}
        Quick-Add
        set appium timeout      10
        click element      ${ADDED-ME}
        wait until page contains element        ${ADDFRIEND}
        click element       ${ADDFRIEND}
        wait until page contains element        ${WAITADD}
        wait until page contains element        ${CLICKCHAT}
        click element       ${CLICKCHAT}
        wait until page contains element        ${CHATADDED}
        input text      ${TEXT}                 ${QuickAddText}
        Press keycode           66
        wait until page contains element        ${MESSAGE}
        press keycode       4
        press keycode       4
        Quick-Add
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        Click-HomeTab


ProccesacceptMessage
        [Arguments]     ${AcceptText}
        Add-accept-friends
        click element      ${ADDED-ME}
        wait until page contains element        ${ACCEPT-FRIEND}
        click element       ${ACCEPT-FRIEND}
        wait until page contains element        ${ZONDIAC}
        set appium timeout      20
        click element   ${CLICKCHAT}
        wait until page contains element        ${CHATADDED}
        input text      ${TEXT}                 ${AcceptText}
        Press keycode           66
        wait until page contains element        ${MESSAGE}
        wait until page contains element        ${BACK}
        press keycode       4
        press keycode       4
        Add-accept-friends
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        Click-HomeTab

Proccesaccept
        Add-accept-friends
        Long Press      ${ADDED-ME}
        wait until page contains element        ${ACTIONMENU}
        click element       ${ACTIONMENU}
        wait until page contains element        ${ADDED-ME1}
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        Click-HomeTab


Addstory
        wait until page contains element        ${MEMORIES}
        click element       ${MEMORIES}
        wait until page contains element        ${CAMERAROLL}
        click element       ${CAMERAROLL}
        wait until page contains element        ${FOTO}
        click element       ${FOTO}
        wait until page contains element        ${SENDSNAP}
        click element       ${SENDSNAP}
        wait until page contains element        ${MYSTORY}
        click element       ${MYSTORY}
        wait until page contains element        ${SENDSNAPSTORY}
        click element       ${SENDSNAPSTORY}

AddstoryV2
        wait until page contains element        ${MEMORIES}
        click element       ${MEMORIES}
        wait until page contains element        ${CAMERAROLL}
        click element       ${CAMERAROLL}
        wait until page contains element        ${FOTO}
        click element       ${StoryPhoto}
        wait until page contains element        ${SENDSNAP}
        click element       ${SENDSNAP}
        wait until page contains element        ${MYSTORY}
        click element       ${MYSTORY}
        wait until page contains element        ${SENDSNAPSTORY}
        click element       ${SENDSNAPSTORY}

AddAnyone
        Quick-Add
        set appium timeout      10
        click element      ${ADDED-ME}
        wait until page contains element        ${ADDFRIEND}
        click element       ${ADDFRIEND}
        set appium timeout      20
        wait until page contains element        ${PROFILESTATUS}
        press keycode       4
        Quick-Add
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        Click-HomeTab


AddAnyoneMessage
        [Arguments]     ${AddAnyoneText}
        Quick-Add
        set appium timeout      10
        click element      ${ADDED-ME}
        wait until page contains element        ${ADDFRIEND}
        click element       ${ADDFRIEND}
        set appium timeout      20
        wait until page contains element        ${PROFILESTATUS}
        wait until page contains element        ${CLICKCHAT}
        click element       ${CLICKCHAT}
        wait until page contains element        ${CHATADDED}
        input text      ${TEXT}                 ${AddAnyoneText}
        Press keycode           66
        wait until page contains element        ${MESSAGE}
        press keycode       4
        press keycode       4
        Quick-Add
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        Click-HomeTab

AddAnyoneV2
        [Arguments]     ${AddAnyoneText}
        Quick-Add
        set appium timeout      10
        click element      ${ADDED-ME}
        wait until page contains element        ${ADDFRIEND}
        click element       ${ADDFRIEND}
        set appium timeout      20
        wait until page contains element        ${PROFILESTATUS}
        wait until page contains element        ${CLICKCHAT}
        click element       ${CLICKCHAT}
        wait until page contains element        ${CHATADDED}
        input text      ${TEXT}                 ${AddAnyoneText}
        Press keycode           66
        wait until page contains element        ${MESSAGE}
        press keycode       4
        press keycode       4
        Quick-Add
        press keycode       4
        Wait Until Page Does Not Contain Element    ${NOTIFICATION}     10
        click element       ${MAIN-HOME-TAB}


Load Settings
    ${json_obj}=    load json from file     Settings.json
    ${User}=    get value from json     ${json_obj}     $.EmailUsername
    Set Global Variable    ${UserName}      ${User}
    ${Pass}=    get value from json     ${json_obj}     $.Password
    Set Global Variable    ${Password}      ${Pass}
    ${Accept}=    get value from json     ${json_obj}     $.InputText.Accept
    Set Global Variable    ${AcceptText}    ${Accept}
    ${QuickAdd}=    get value from json     ${json_obj}     $.InputText.QuickAdd
    Set Global Variable    ${QuickAddText}  ${QuickAdd}
    ${AddAnyone}=    get value from json     ${json_obj}     $.InputText.AddAnyone
    Set Global Variable    ${AddAnyoneText}     ${AddAnyone}
    ${StoryPhoto}=    get value from json     ${json_obj}     $.StorySettings
    Set Global Variable    ${StoryPhotonumber}     ${StoryPhoto}