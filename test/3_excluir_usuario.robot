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
Exlusão de usuario
    Realizar login    marcos@hotmail.com     123    
    Validar Login executado com sucesso
    Excluir usuario



