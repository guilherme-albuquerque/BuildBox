*** Settings ***
Documentation       Consulta site
Resource            ../resources/resource.robot
Resource            ../base/Base.robot


*** Test Cases ***
Validações Casos de testes
#01 - Redirecionamento
    Dado que acesse o site
    Quando o usuario clicar no cadastro
    Então sou redirecionado
    
#02 - CPF sem digito verificador
    Dado que preencha o campo CPF sem o digito verificador
    Quando o usuario clicar para cadastrar usuario
    Então o sistema retornara com erro CPF

#03 - CPF com 8 digitos
    Dado que preencha o campo CPF com apenas 8 dígitos.
    Quando o usuario clicar para cadastrar usuario
    Então o sistema retornara com erro CPF

#04 - EMAIL sem o caracter "@"
    Dado que preencha o campo EMAIL sem o caracter "@"
    Quando o usuario clicar para cadastrar usuario
    Então o sistema retornara com erro EMAIL

#05 - WhatsApp incorreto 
    Dado que preencha o campo WhatsApp incorreto
    Quando o usuario clicar para cadastrar usuario
    Então o sistema retornara com erro Whats

#06 - CEP com um valor incorreto 
    Dado que preencha o campo CEP incorreto
    Quando o usuario clicar para cadastrar usuario
    Então o sistema retornara com erro CEP

#07 - Método de entrega
    Dado que preencha o metodo de entrega
    Quando o usuario clicar para cadastrar usuario
    Então o sistema retornara com erro metodo de entrega

