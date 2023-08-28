*** Settings ***
Documentation    Automação do site Automation Exercise
Library          SeleniumLibrary
Test Setup      Abrir Navegador    ${URL}     ${Browser}
Test Teardown   Close Browser     
Resource    ../resource/resouces.robot

*** Variables ***
${URL}    https://automationexercise.com/login
${Browser}    Chrome

*** Test Cases ***
Cadastro bem-sucedido
    Cadastrar usuario   Marcos      marcos@hotmail.com
    Preencher formulario de Cadastro    
   # Fazer Logout

Realização de cadastro com um e-mail já cadastrado 
    #Go To    https://automationexercise.com/login
    Cadastrar usuario    Marcos    marcos@hotmail.com
    Validar e-mail já existente



