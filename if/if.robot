*** Settings ***
Documentation    Usando if jogo advinhacao
Library    Collections
  
*** Test Cases ***
jogo do advinha
    Eu tenho o numero    5
 
*** Keywords ***
Eu tenho o numero
    [Arguments]    ${possuo_o_numero}
    Ganhei o jogo "${possuo_o_numero}"

Ganhei o jogo "${numero_recebido}"
    ${mensagem_vencedora}    Set Variable    você ganhou o jogo
    IF    ${numero_recebido} == ${5}
        Log To Console    ${mensagem_vencedora}
    ELSE IF    ${numero_recebido} == ${8}
        Log To Console    ${mensagem_vencedora}        
    ELSE
        Log To Console    voce perdeu......
    END
    