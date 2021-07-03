*** Settings ***
Documentation     Testando lacos (for) com robot
Library    Collections
Library    String
Library    Telnet
 
 
*** Test Cases ***
contando até 9
    Contar      0    9
 
*** Keywords ***
Contar
    [Arguments]        ${num_inicial}    ${num_final}
    FOR     ${count}    IN RANGE     ${num_inicial}    ${num_final}
     Log To Console    \nEstou no numero: ${count} 
    END
