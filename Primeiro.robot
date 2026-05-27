*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${curso}   Squad Academy
@{profissionais}   Renan   Renato   Alexandre
&{Aulas}  Aula01=Robot    Aula02=Playwrite    Aula03=Cypress
&{LOCATOR}
...    standart=//input[@data-test="username"]
...    locked=//input[@data-test="username"]
...    problem=//input[@data-test="username"]
...    performance=//input[@data-test="username"]
...    error=//input[@data-test="username"]
...    visual=//input[@data-test="username"]
...    senha=//input[@data-test="password"]


*** Test Cases ***

valida acesso com standard_user
    [Tags]  user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      ${Locator.standart}   standard_user  #//input[@data-test="username"]  
    Input Text      ${Locator.senha}   secret_sauce  #//input[@data-test="password"]  
    Click Button    //input[@data-test="login-button"]
    Element Text Should Be   //span[@data-test="title"]   Products
    Element Should Be Visible   //a[@data-test="shopping-cart-link"] 

    ##${Produto}   Get text       //span[@data-test="title"] 
    ##log to console   ${Produto}
    #Wait Until Page Contains  Renan  5s  Palavra não encontrada           
    #Title Should Be  Swag Labs 
    Close Browser


valida acesso com locked_out_user
    [Tags]  user2 
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      ${Locator.standart}   locked_out_user   #//input[@data-test="username"]  locked_out_user
    Input Text      ${Locator.senha}   secret_sauce         #//input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser

valida acesso com problem_user
    [Tags]  user3     
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      ${Locator.problem}   problem_user    #//input[@data-test="username"]  problem_user
    Input Text      ${Locator.senha}     secret_sauce    #//input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s   
    Close Browser

valida acesso com performance_glitch_user
    [Tags]  user4
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      ${Locator.problem}    performance_glitch_user      #//input[@data-test="username"]  performance_glitch_user
    Input Text      ${Locator.senha}     secret_sauce                  #//input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser        

valida acesso com error_user
    [Tags]  user5
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      ${Locator.error}    error_user     #//input[@data-test="username"]  error_user
    Input Text      ${Locator.senha}     secret_sauce     #//input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser

valida acesso com visual_user
    [Tags]  user6
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      ${Locator.visual}    visual_user       #//input[@data-test="username"]  visual_user
    Input Text      ${Locator.senha}     secret_sauce    #//input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser