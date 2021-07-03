resource_mobile
 


*** Settings ***
Documentation    arquivo responsavel pelas variaveis, KW e variaveis do proveto mobile testing
Library          AppiumLibrary
 
*** Variables ***
# Setup do device
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        9.0
${DEVICE_NAME}             pixel
${APP_PACKAGE}             com.google.android.youtube
${APP_ACTIVITY}            com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}         UiAutomator2
 
## variaveis do aplicativo
${BTN_SEARCH}                  accessibility_id=Search
${INPUT_SEARCH}                search_edit_text
${CHANNEL_NAME}                channel_name
${PLAYLISTS}                   accessibility_id=Playlists
${CHOOSE_E3}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.support.v4.view.ViewPager/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.RelativeLayout[2]/android.widget.TextView[1]
${HOME_BTN}                    accessibility_id=Home
${TRENDING_BTN}                accessibility_id=Trending
${SUBSCRIPTIONS_BTN}           accessibility_id=Subscriptions
${NOTIFICATION_BTN}            accessibility_id=Notifications
 
*** Keywords ***
Abrir o aplicativo no celular
    Open Application                    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
 
Buscar o canal “${nome_do_canal}"
    Wait Until Element Is Visible        ${BTN_SEARCH}
    Click Element                        ${BTN_SEARCH}
    Wait Until Element Is Visible        ${INPUT_SEARCH}
    Input Text                           ${INPUT_SEARCH}    ${nome_do_canal}
    Press Keycode                        66
 
Selecionar o canal na lista de busca
    Wait Until Element Is Visible    ${CHANNEL_NAME}
    Click Element    ${CHANNEL_NAME}
 
Navegar pelo menu Playlist
    Wait Until Element Is Visible    ${PLAYLISTS}
    Click Element    ${PLAYLISTS}
 
Selecionar a playlist da E3 do canal
    Wait Until Element Is Visible    ${CHOOSE_E3}    10
    Click Element              ${CHOOSE_E3}
 
Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
    Click Element    ${HOME_BTN}
    Click Element    ${TRENDING_BTN}
    Click Element    ${SUBSCRIPTIONS_BTN}
    Click Element    ${NOTIFICATION_BTN}