*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e KeyWords
Library          SeleniumLibrary
 
*** Variables ***
${URL}    http://automationpractice.com
 
*** Keywords ***
## ----- suite setup
Abrir o navegador
    Open Browser    browser=Chrome
 
Fechar o navegador
    Close Browser
 
## --- acoes
Acessar a página home do site Automation Practice
    Go To    ${URL}
 
Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible       id:search_query_top
    Input Text    id:search_query_top    ${produto}
 
Clicar no botão pesquisar
    Click Button     name:submit_search
 
Conferir se o produto "${produto}" foi listado no site
    Wait Until Element Is Visible    //h5[@itemprop='name'][contains(.,'Blouse')]
    Element Text Should Be           //h5[@itemprop='name'][contains(.,'Blouse')]    ${produto}