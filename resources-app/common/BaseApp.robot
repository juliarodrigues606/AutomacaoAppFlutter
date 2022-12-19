*** Settings ***
Library       AppiumFlutterLibrary
Library       FakerLibrary    locale=pt_BR
Resource      C:/exercicioPratico/gitRepositorioAutomacao/AutomacaoAppFlutter/resources-app/common/Setup.robot

*** Keywords ***
## Ações
Clicar em
    [Arguments]     ${elemento}
    Click Element        ${elemento}

Preencher o campo "${elemento}" com o valor "${valor}"
    Input Text    ${elemento}    ${valor}

Acessar menu
    [Arguments]   ${menu}
    Scroll To Element    ${menu}
    Click Element        ${menu}

## Validações
O texto apresentado no campo "${elemento}" deve ser "${texto_esperado}"
    Element Text Should Be    ${elemento}    ${texto_esperado}
    #    ${texto_elemento}=   Get Element Text    ${elemento}
    #    Should Be Equal As Strings    ${texto_elemento}    ${texto_esperado}
    #    Log Many    Texto apresentado na tela: ${texto_elemento} - Texto esperado: ${texto_esperado}


Aguardar carregamento
    [Arguments]     ${elemento}
    Wait For Element       ${elemento}        timeout=60

O app apresenta a tela de 'Em breve'
    O texto apresentado no campo "" deve ser ""

