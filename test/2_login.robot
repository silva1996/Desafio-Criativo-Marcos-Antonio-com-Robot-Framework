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
Login bem-sucedido
    Realizar login    marcos@hotmail.com     123    
    Validar Login executado com sucesso

Realização de login com e-mail invalido
    Realizar login    marcos1@hotmail.com     123    
    Validar Login sem sucesso

Realização de login com senha invalida
    Realizar login    marcos@hotmail.com     1    
    Validar Login sem sucesso


