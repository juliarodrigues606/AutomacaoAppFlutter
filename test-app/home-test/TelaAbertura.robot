*** Settings ***
Resource        C:/exercicioPratico/appFlutter/resources-app/common/Setup.robot
Resource        C:/exercicioPratico/appFlutter/resources-app/common/BaseApp.robot
Resource        C:/exercicioPratico/appFlutter/resources-app/common/UtilsApp.robot
Resource        C:/exercicioPratico/appFlutter/resources-app/pages/home/HomePage.robot

*** Test Cases ***
Validar tela de abertura
    Abrir App
    Aguardar carregamento    ${texto_explore}
    O texto apresentado no campo "${texto_explore}" deve ser "EXPLORE"
    Fechar App