Plano de Testes para o Site https://www.automationexercise.com/
1. Objetivo:
O objetivo deste plano de testes é garantir a qualidade das funcionalidades de "Login" e "Cadastro" no site https://www.automationexercise.com/. Iremos verificar se os usuários podem fazer login de maneira eficaz, se o processo de cadastro está funcionando corretamente e se as validações estão sendo aplicadas conforme esperado.
2. Escopo:
O escopo deste plano abrange as seguintes funcionalidades do site:
- Funcionalidade de "Login"
- Funcionalidade de "Cadastro"
3. O que Testaremos:
- Teste de Login com credenciais válidas e inválidas.
- Teste de Cadastro com informações válidas e inválidas.
- Teste de validação de campos obrigatórios no formulário de cadastro.
- Teste de validação de e-mails já existentes durante o cadastro.
4. O que Não Testaremos:
- Não testaremos funcionalidades além das relacionadas ao "Login" e "Cadastro".
- Além do navegador Google Chrome, não testaremos em diferentes navegadores em testes automatizados
5. Como Testaremos:
a) Testes Manuais:
- Elaboraremos casos de teste detalhados para cada cenário identificado.
- Realizaremos testes manuais de todos os cenários definidos nos casos de teste, seguindo o fluxo de BDD.
- Registraremos os resultados dos testes, incluindo sucesso, falha e observações.
Desafio Criativo: Marcos Antonio
Telefone:81 994573415
LinkedIn: https://www.linkedin.com/in/marcosan1/
- Documentaremos quaisquer defeitos encontrados durante os testes.
- Verificaremos a cobertura dos testes em relação aos cenários planejados.
b) Testes Automatizados:
- Implementaremos testes automatizados usando o framework Robot Framework.
- Os testes automatizados abrangerão os casos de teste de "Login Válido" e "Login Inválido".
- Utilizaremos a biblioteca SeleniumLibrary para automatizar a interação com o site.
- Desenvolver scripts para cada cenário de teste definido no cenário de testes.
- Verificar elementos na página, preencher campos, clicar em botões e realizar as etapas do processo de cadastro e login.
6. Casos de Testes
Cenários Casos de testes Descrição
01-Cadastro
- CT01.01 - Cadastro bem-sucedido
Dado que estou na página de cadastro
Quando preencho todos os campos obrigatórios com informações válidas
E clico no botão de cadastro
Então devo ver uma mensagem de sucesso confirmando o cadastro
- CT01.02 - Realização de cadastro com Nome vazio
Dado que estou na página de cadastro
Quando tento realizar o cadastro sem preencher o nome
Então devo ver uma mensagem de erro informando sobre o campo obrigatório
- CT01.03 - Realização de cadastro com e-mail vazio
Dado que estou na página de cadastro
Quando tento realizar o cadastro sem preencher o e-mail
Então devo ver uma mensagem de erro informando sobre o campo obrigatório
- CT01.04 - Realização de cadastro com Email invalido sem “@”
Dado que eu esteja na página de cadastro
Quando preencho o campo de e-mail com um e-mail inválido
Então recebo uma mensagem de erro informando devo incluir um “@” no endereço de e-mail.
- CT01.05 - Realização de cadastro com um e-mail já cadastrado
Dado que eu esteja na página de cadastro
Quando preencho apenas o campo de e-mail com um e-mail já existente
Então recebo uma mensagem de erro informando que o e-mail já está cadastrado
Desafio Criativo: Marcos Antonio
Telefone:81 994573415
LinkedIn: https://www.linkedin.com/in/marcosan1/
Cenários Casos de testes Descrição
- 002- Login
-CT 02.01- Login bem-sucedido
Dado que estou na página de login
Quando preencho meu nome de usuário e senha válidos
E clico no botão de login
Então devo ser redirecionado para a página de boas-vindas.
- CT 02.02 - Realização de login com campos vazios
Dado que estou na página de login
Quando realizo login sem preencher os campos obrigatórios
Então devo ver uma mensagem de erro informando sobre os campos obrigatórios.
- CT 02.03 - Realização de login com e-mail invalido
Dado que estou na página de login
Quando Realizo login com e-mail inválido e senha valida
Então devo ver uma mensagem de erro informando sobre as credenciais inválidas
- CT 02.05- Realização de login com senha invalida
Dado que estou na página de login
Quando realizo login com e-mail válido e senha inválida
Então devo ver uma mensagem de erro informando sobre as credenciais inválidas.
7. Cronograma:
1ª Dia: Elaboração do Plano de testes e a Realização dos testes manuais de "Login" e "Cadastro".
2º Dia: Desenvolvimento do script automatizado e Execução dos testes automatizados.
3º Dia: Revisão do projeto
4º Dia: Finalização do relatório de testes e encerramento do plano.
Observações:
- Durante a elaboração dos scripts de teste, não foi possível localizar o Tooltip associado à informação "Preencher esse campo" em um elemento específico. Como resultado, os casos de teste: CT01.02, CT01.03, CT01.06 e CT02.02 não puderam ser automatizados, sendo realizados apenas por meio de testes manuais.
- Foi desenvolvida uma suíte de testes chamada "excluir_usuario.robot". Após a etapa de cadastro e login do usuário, essa coleção é acionada para excluir o cadastro do usuário no site, permitindo a realização de novos testes sem contratempos. No entanto, é possível que ocorra um código de erro devido a elementos de propaganda no site. Porém essa mensagem de erro no código não implica necessariamente que o cadastro não tenha sido excluído com sucesso do site.
