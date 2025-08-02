*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open First Text Page
    Open Browser    url=http://localhost:3000/   browser=Chrome
    Maximize Browser Window


preencher os campos do formularios

    Input Text    id:form-nome      Edson  
    Input Text    id:form-cargo     Desenvolvedor java 
    Input Text    id:form-imagem    https://picsum.photos/200/300
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]
    Sleep    10s
    Click Element    id:form-botao
    Element Should Be Visible    class:colaborador
    Sleep    5s
