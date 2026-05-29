*** Settings ***
Library   SeleniumLibrary
Resource  variaveis.robot  
Resource  keywork.robot 

Suite Setup    Log To Console    Suite Iniciada

Test Setup     Acesso a app
Test Teardown  Capture Page Screenshot

Suite Teardown  Log to Console  Suite Terminada

*** Test Cases ***
Teste 01
    Click Element   //button[@data-test="add-to-cart-sauce-labs-backpack"]
    Click Link      //a[@data-test="shopping-cart-link"]

    Wait Until Element Is Visible    //span[text()="Your Cart"]    10s
    Element Should Be Visible        //div[text()="Sauce Labs Backpack"]
   
Teste 02
   Click Element   //button[@data-test="add-to-cart-sauce-labs-backpack"] 
   Click Link      //a[@data-test="shopping-cart-link"]

   Wait Until Element Is Visible    //span[text()="Your Cart"]    10s
   Click Element        //button[@data-test="remove-sauce-labs-backpack"]
   Element Should Not Be Visible    //span[@class="shopping_cart_badge"]

   #No Operation
   # Adicionar um produto no carrrinho
   # Entrar na pagina do carrinho
   # Validar se o produto esta no carrinho
   # Remover esse produto
   # Validar se o carrinho esta vazio

Teste 03
    Click Element    //a[@data-test="social-linkedin"]

    Switch Window    NEW

    Location Should Contain    linkedin.com

    #Wait Until Element Is Visible  //h1[@title="Sauce Labs"]


 






