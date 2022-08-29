*** Settings ***
Documentation     Filters
Library           Browser
Resource          ../locators/variables.robot

*** Keywords ***
Dado que preencha o campo CPF sem o digito verificador
    Type Text    ${txtCPF}    9999999999999999999999999999

Dado que preencha o campo CPF com apenas 8 dígitos.
    Type Text    ${txtCPF}    430983618

Dado que preencha o campo EMAIL sem o caracter "@"
    Type Text    ${txtEmail}    guirodrigueshotmail.com

Dado que preencha o campo WhatsApp incorreto
    Type Text    ${txtWhatsapp}    +55 9 9790 24

Dado que preencha o campo CEP incorreto
    Type Text    ${txtCEP}    061422
    Click    ${btnBuscaCEP}

#Dado que preencha todos os campos corretamente
#   Type Text    ${txtNome}    Jarbas Vasconcelos
#   Type Text    ${txtCPF}    43098361867
#   Type Text    ${txtEmail}    teste@gmail.com
#   Type Text    ${txtWhatsapp}    +55 9 9790 2433
#   Type Text    ${txtCEP}        06142230
#   Click        ${btnBuscaCEP}
#   Type Text    ${txtNumero}     5555
#   Type Text    ${txtComplemento}    casa
#   ${promise}=    Promise To Upload File    BuildBox-main\\test.png 
    
Dado que preencha o metodo de entrega
    Click    ${btnMetodoBike}
    Click    ${btnMetodoCarro}
Quando o usuario clicar no cadastro
    Click    ${btnCadastro}

Quando o usuario clicar para cadastrar usuario
    Click    ${btnEnviar}

Então sou redirecionado
    Take Screenshot

Então o sistema retornara com erro CPF
    Take Screenshot    ${msnErroCPF}
    Clear Text    ${txtCPF}

Então o sistema retornara com erro EMAIL
    Take Screenshot    ${txtEmail}
    Clear Text    ${txtEmail}

Então o sistema retornara com erro Whats
    Take Screenshot    ${txtWhatsapp}
    Clear Text    ${txtWhatsapp}

Então o sistema retornara com erro CEP
    Take Screenshot    ${txtCEP}
    Clear Text    ${txtCEP}

Então o sistema retornara com erro metodo de entrega
    Take Screenshot    ${btnMetodoCarro}
    
Então o sistema cadastra com sucesso
    Take Screenshot    ${btnSucesso}
 