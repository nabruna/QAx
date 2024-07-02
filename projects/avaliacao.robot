# Complemente o arquivo abaixo para que o caso de teste "1 - Acessar o site da Agrotis pelo Google" seja executado conforme sua documentação.
# Não se preocupe quanto aos elementos ou keywords utilizados, será avaliada a lógica aplicada para a solução.

*** Settings ***
Documentation   Acesso ao site da Agrotis
Library         SeleniumLibrary
Library         Builtin

*** Variables ***
${BROWSER}          chrome
${URL}              https://www.google.com.br/
${Elemento}         //h3[contains(.,'Agrotis | Sistemas para o agronegócio')]     # Alterei a string para encontrar pelo H3

*** Test Cases ***
1 - Acessar o site da Agrotis pelo Google
    [Documentation]     Abre a página do Google, busca na barra de pesquisa por "Agrotis", acessa o link referente ao site da empresa e valida se "Software Agrotis para o Agronegócio" é apresentado.
    Open Browser                         browser=${BROWSER}
    Go To                                ${URL}
    Validar Elemento                     id:APjFqb
    Input Text                           id:APjFqb    Agrotis
    Sleep    	                         2
    Validar Elemento                     name:btnK
    Click Element                        name:btnK
    Validar Elemento                     ${Elemento}
    Click Element                        ${Elemento}

*** Keywords ***
Validar Elemento
    [Documentation]     Valida a existência do item na página.
    [Arguments]     ${localizador}
    Wait Until Page Contains Element    locator=${localizador}      timeout=15s
    Page Should Contain Element         locator=${localizador}

# Indicar neste comentário o comando que deverá ser inserido para que o teste seja executado:
# robot avaliacao.robot