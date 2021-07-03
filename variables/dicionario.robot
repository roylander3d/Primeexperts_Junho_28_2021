*** Settings ***
Documentation     Meu teste de variaveis
Library    Collections
 
*** Variables ***
${MENSAGEM}    Hello world!
${NUMERO}      ${10}
${BOLLEAN}     ${true}
&{PESSOA}      nome=Augusto    sobrenome=Vieira    idade=28 
@{FRUTAS}      banana    maca    laranja
 
*** Test Cases ***
Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma lista de FRUTAS
 
Meu teste de impressao de mensagem no terminal
    Logar no terminal uma mensagem
 
Meu teste imprimindo um dicionario de Pessoa
    Logar no meu terminal uma PESSOA
 
*** Keywords ***
Logar no terminal uma mensagem
    Log To Console    ${nova_fruta}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}
 
Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!
 
Logar no meu terminal uma lista de FRUTAS
    Set Suite Variable    ${nova_fruta}    morango
    ${nova_fruta2}    Set Variable     uva
    Log To Console    ${\n}
    Log To Console    ${FRUTAS} ${nova_fruta} ${nova_fruta2}
    Log Many          ${FRUTAS}
    Log To Console    ${nova_fruta} ${nova_fruta2}