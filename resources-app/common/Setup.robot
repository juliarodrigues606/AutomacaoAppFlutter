*** Settings ***
Library    AppiumFlutterLibrary


*** Variables ***
${APPIUM_SERVER}      http://127.0.0.1:4723/wd/hub
${ATOMATION_NAME}     flutter
${PLATFORM_NAME}      Android
${DEVICE_NAME}        RF8T40DY0YX
${APP_PATH}           C:/exercicioPratico/gitRepositorioAutomacao/AutomacaoAppFlutter/resources-app/app/app-profile.apk
#${appActivity}        br.com.banese.digital.MainActivity


*** Keywords ***
Abrir App
    AppiumFlutterLibrary.Open Application	     ${APPIUM_SERVER}	
    ...                                          automationName=${ATOMATION_NAME}	
    ...                                          platformName=${PLATFORM_NAME}	
    ...                                          platformVersion=12.0    
    ...                                          deviceName=${DEVICE_NAME}	
    ...                                          app=${APP_PATH}


Fechar App
    Close Application
