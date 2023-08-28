*** Settings ***
Documentation    Automação do site Automation Exercise
Library          SeleniumLibrary
Library    OperatingSystem
 







*** Keywords ***
Abrir Navegador
    [Arguments]     ${URL}    ${Browser} 
    Open Browser    ${URL}    ${Browser}    options=add_experimental_option("detach", True)

Cadastrar usuario
    [Arguments]    ${nome}    ${email}
    Input Text    //form/input[@name='name']    ${nome}
    Input Text    //form[@action='/signup']/input[@name='email']    ${email}
    Click Button    //button[@data-qa='signup-button'] 

Preencher formulario de Cadastro
   [Arguments]   
    Click Element    //input[@id="id_gender1"]
    Input Text    //input[@data-qa="password"]    123
    Select From List By Value       //select[@data-qa="days"]    30
    Select From List By Value       //select[@data-qa="months"]  8
    Select From List By Value       //select[@data-qa="years"]    1996
    Input Text    //*[@id="first_name"]    Marcos
    Input Text    //*[@id="last_name"]    Junior
    Input Text    //*[@id="address1"]    av brasil
    Select From List By Value    //*[@id="country"]    United States
    Input Text    //*[@id="state"]    texas
    Input Text    //*[@id="city"]    Dallas
    Input Text    //*[@id="zipcode"]   1010101010010
    Input Text    //*[@id="mobile_number"]    1111111111111
    Mouse Over    //*[@id="susbscribe_email"]
    Click Button    //button[@data-qa='create-account']
    ${validação_de_conta_criada}    Get WebElement    //h2[@data-qa='account-created']
    Should Contain    ACCOUNT CREATED!    ${validação_de_conta_criada.text}
 
Validar e-mail já existente
    ${validação_de_email_existente}    Get WebElement    //form[@action='/signup']/p
    Should Contain    Email Address already exist!    ${validação_de_email_existente.text}   

############################################################################################################

#Login
Realizar login
    [Arguments]    ${email}    ${password}
    Input Text    //form[@action='/login']/input[@name='email']    ${email}
    Input Password    //form[@action='/login']/input[@name='password']    ${password}
    Click Button    //button[@data-qa='login-button']

Validar Login executado com sucesso    
    Element Should Be Visible    //a[@href='/logout']

Validar Login sem sucesso    
    ${validação_de_email_sem_sucesso}    Get WebElement    //form[@action='/login']/p
    Should Contain    Your email or password is incorrect!    ${validação_de_email_sem_sucesso.text} 

Excluir usuario 
    Click Element    //a[@href='/delete_account']
    ${validação_de_exclusão_de_usuario}    Get WebElement    //h2[@data-qa="account-deleted"]/b
    Should Contain    ACCOUNT DELETED!    ${validação_de_exclusão_de_usuario.text} 