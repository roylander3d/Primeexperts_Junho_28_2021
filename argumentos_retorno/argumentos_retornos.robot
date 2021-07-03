*** Settings ***
Documentation     testando argumentos e retornos
Library    Collections
 
Suite Setup    kw para executar no setup da Suite
Test Setup    kw para executar no setup de cada Teste
Suite Teardown    kw para executar no Teardown da Suite
Test Teardown    kw para executar no Teardown de cada Teste
 
*** Variables ***
 
*** Test Cases ***
Meu teste de soma
    ${resultado_da_soma}    somar dois numeros    1    2
    Log    ${resultado_da_soma}
    ${resultado_da_soma}    somar dois numeros    ${resultado_da_soma}    4
    Log    ${resultado_da_soma}
 
Meu teste de soma 2
    somar dois numeros    3    4
 
*** Keywords ***
kw para executar no setup da Suite
    Log To Console    Essa KW foi executada no Setup da Suite
 
kw para executar no setup de cada Teste
    Log To Console    Essa KW foi executada no setup de cada Teste
 
kw para executar no Teardown da Suite
    Log To Console    Essa KW foi executada no Teardown desta Suite!!!
 
kw para executar no Teardown de cada Teste
    Log To Console    Essa KW foi executada no Teardown deste Teste!
 
somar dois numeros
    [Arguments]    ${primeiro_num}  ${segundo_num}
    ${resultado_da_expressao}    Evaluate    ${primeiro_num}+${segundo_num}
    Log To Console    ${\n}O resultado é: ${resultado_da_expressao}
    [Return]    ${resultado_da_expressao}