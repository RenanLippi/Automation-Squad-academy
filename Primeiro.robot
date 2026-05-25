*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
valida acesso com standard_user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@data-test="username"]  standard_user
    Input Text      //input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s
    Close Browser


valida acesso com locked_out_user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@data-test="username"]  locked_out_user
    Input Text      //input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser

valida acesso com problem_user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@data-test="username"]  problem_user
    Input Text      //input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s   
    Close Browser

valida acesso com performance_glitch_user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@data-test="username"]  performance_glitch_user
    Input Text      //input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser        

valida acesso com error_user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@data-test="username"]  error_user
    Input Text      //input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser

valida acesso com visual_user
    Open Browser    https://www.saucedemo.com/    Chrome
    Input Text      //input[@data-test="username"]  visual_user
    Input Text      //input[@data-test="password"]  secret_sauce
    Click Button    //input[@data-test="login-button"]
    sleep           5s    
    Close Browser