*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com/
${BROWSER}     chrome
${LOGIN}       standard_user
${PASSWORD}    secret_sauce

*** Keywords ***
Fechar Browser
    Close Browser

Acessar página Swag Labs
    Open Browser                     url=${URL}                   browser=${BROWSER}
    Wait Until Element Is Visible    id=login_button_container

Logar na aplicação
    Input Text                     id=user-name              ${LOGIN}
    Input Text                     id=password               ${PASSWORD}
    Click Element                  id=login-button
    Page Should Contain Element    id=inventory_container

Clicar no Menu Lateral
    Wait Until Element Is Visible    id=react-burger-menu-btn
    Click Element                    id=react-burger-menu-btn
    Page Should Contain Element      class=bm-menu-wrap

Validar lista do Menu
    Wait Until Element Is Visible    id=inventory_sidebar_link
    Element Text Should Be           id=inventory_sidebar_link    All Items
    Element Text Should Be           id=about_sidebar_link        About
    Element Text Should Be           id=logout_sidebar_link       Logout
    Element Text Should Be           id=reset_sidebar_link        Reset App State

Clicar no botão X do Menu Lateral
    Sleep                                1s
    Wait Until Element Is Visible        id=react-burger-cross-btn
    Click Element                        id=react-burger-cross-btn
    Sleep                                2s
    Element Attribute Value Should Be    id=inventory_sidebar_link    tabindex    -1

Clicar em Logout
    Click Element                 id=logout_sidebar_link
    ${current_url}=               Get Location
    Should Be Equal As Strings    ${current_url}            ${URL}

Clicar em About
    Click Element                 id=about_sidebar_link
    ${current_url}=               Get Location
    Should Be Equal As Strings    ${current_url}           https://saucelabs.com/