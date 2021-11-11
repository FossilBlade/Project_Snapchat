*** Settings ***
Library	     AppiumLibrary
Library       JSONLibrary
Library       os
Library       Collections
Library       String
Resource     ../Resources/Android-res.robot



*** Test Cases ***
Loading Settings
    Load Settings
Login
    Open Snapchat Application
    wait until page contains element        ${LOGIN-BUTTON-START}
    Login-prosses       ${UserName}     ${Password}
Addstory
        wait until page contains element        ${MEMORIES}
        click element       ${MEMORIES}
        wait until page contains element        ${CAMERAROLL}
        click element       ${CAMERAROLL}
        wait until page contains element        xpath=//android.view.ViewGroup[@index='${StoryPhotonumber}[0]']
        click element       xpath=//android.view.ViewGroup[@index='${StoryPhotonumber}[0]']
        wait until page contains element        ${SENDSNAP}
        click element       ${SENDSNAP}
        wait until page contains element        ${MYSTORY}
        click element       ${MYSTORY}
        wait until page contains element        ${SENDSNAPSTORY}
        click element       ${SENDSNAPSTORY}
Add Story Successfully
    wait until page contains element        ${ADDEDTOSTORYSUCCES1}