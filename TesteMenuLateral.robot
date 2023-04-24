*** Settings ***
Resource    Resource.robot

*** Test Cases ***
Caso de Teste 01: Acessar Menu Lateral

    Acessar página Swag Labs
    Logar na aplicação
    Clicar no Menu Lateral
    Validar lista do Menu
    Fechar Browser

Caso de Teste 02: Fechar Menu Lateral
    Acessar página Swag Labs
    Logar na aplicação
    Clicar no Menu Lateral
    Clicar no botão X do Menu Lateral
    Fechar Browser

Caso de Teste 03: Funcionalidade Logout
    Acessar página Swag Labs
    Logar na aplicação
    Clicar no Menu Lateral
    Clicar em Logout
    Fechar Browser

Caso de Teste 04: Funcionalidade About
    Acessar página Swag Labs
    Logar na aplicação
    Clicar no Menu Lateral
    Clicar em About
    Fechar Browser