*** Settings ***
Documentation     testando lacos(for) com robot
Library    Collections
 
*** Test Cases ***
jogo do advinha
    Eu tenho o numero    5
 
*** Keywords ***
Eu tenho o numero
    [Arguments]    ${recebo_valor_do_test_case}
    Regra do jogo "${recebo_valor_do_test_case}"
 
Regra do jogo "${numero_recebido}"
    ${mensagem_vencedora}    Set Variable    voce ganhou o jogo
    IF    ${numero_recebido} == ${5}
        Log To Console    ${mensagem_vencedora}
    ELSE IF    ${numero_recebido} == ${8}
        Log To Console    ${mensagem_vencedora}
    ELSE
        Log To Console    voce perdeu.....
    END