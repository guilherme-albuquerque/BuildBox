*** Settings ***
Documentation     Variaveis Ao Cubo
Library           Browser

*** Variables ***
${url}            https://buger-eats.vercel.app
${btnCadastro}    xpath=//a[@href='/deliver']
 #dados
${validacao}      xpath=//h1[contains(text(),'Cadastre-se para')]
${txtNome}        xpath=//input[@placeholder='Nome completo']]
${txtCPF}         xpath=//input[@placeholder='CPF somente números']
${txtEmail}       xpath=//input[@placeholder='E-mail']
${txtWhatsapp}    xpath=//input[@placeholder='Whatsapp']
 #endereço
${txtCEP}         xpath=//input[@placeholder='CEP']
${btnBuscaCEP}    xpath=//input[@value='Buscar CEP']
${txtNumero}      xpath=//input[@placeholder='Número']
${txtComplemento}    xpath=//input[@placeholder='Complemento']
 #metodos de entrega
${btnMetodoMoto}    xpath=//img[@alt='Moto']
${btnMetodoBike}    xpath=//img[@alt='Bicicleta']
${btnMetodoCarro}    xpath=//img[@alt='Van/Carro']
${uploadArq}      xpath=//p[normalize-space()='Foto da sua CNH']
${btnEnviar}      xpath=//button[@type='submit']
${btnSucesso}    xpath=//div[@class='swal2-success-ring']
#Erro
${msnErroCPF}    xpath=//span[normalize-space()='Oops! CPF inválido']
