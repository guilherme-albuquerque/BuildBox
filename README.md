<h1 align="center">
    Projeto BuildBox
</h1>

#### Estrutura do Projeto
    │───BuildBox-main
        │─── .BuildBox                        # Diretorio de arquivos de automação
            │─── basePage                   # Diretorio com acesso ao site
            │─── locators                   # Diretorio com as variaveis
            │─── resources                  # Diretorio de arquivos de ações
            │─── tests                      # Diretorio dos testes
                │─── results                    # Diretorio de resultados dos testes
        │─── requiriments.txt           # arquivo com as bibliotecas utilizadas
        │─── README.md

#### Configurando o projeto na sua máquina
Para rodar o projeto na sua máquina basta seguir os passos:

    - Ter uma IDE de sua preferência
    - Python instalado: [Site de instalacao do python](https://www.python.org/downloads/)
    - Node Instalado    [ Site de instalacao do Node ](https://nodejs.org/en/download/)

   >Copiar o Projeto
   ```
   https://github.com/guilherme-albuquerque/Project.git
   ```

   >Instalar as dependencia do robot no seu terminal
   ```
   cd C:\{PATH}\BuildBox
   ```
   ```
   pip install -r .\requirements.txt
   ```
    

   > Após a instalação executar o comando:
   ```
   rfbroser init
   ```
   
   > Executando o Script: Passo a Passo
   ```
   1. Abra o prompt de comando.
   ```
   ```
   2. Navegue até o arquivo ConsultaBuildBox.robot que se encontra no caminho "BuildBox-main" > "BuildBox" > "tests" > "ConsultaBuildBox.robot"
   ```
   ```
   3. Digite o comando "python -m robot -d ./results ConsultaBuildBox.robot"
   ```
   

#### Cenario de Testes
1-) 
Dado que acesse o site : https://buger-eats.vercel.app/ 
Quando clico no botão "Cadastre-se para fazer entregas"
Então sou redirecionado para tela de cadastro

2-)
Dado que preencha o campo CPF sem o digito verificador
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Oops! CPF inválido" 

3-)
Dado que preencha o campo CPF com apenas 8 dígitos.
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Oops! CPF inválido" 

4-)
Dado que preencha o campo EMAIL sem o caracter "@"
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Inclua um "@" no endereço de email" 

5-)
Dado que preencha o campo WhatsApp incorreto 
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Oops! Whatsapp com formato incorreto" 

6-)
Dado que preencha o campo CEP com um valor incorreto 
Quando clicar em "Buscar CEP"
Então o sistema retornara com "Informe um CEP válido" 

7-)
Dado que selecione mais de uma opção no "Método de entrega"
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Oops! Selecione apenas um método de entrega" 

8-)
Dado que não anexe uma foto da CNH
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Adicione uma foto da sua CNH" 

9-)
Dado que preencha todos os campos corretamente
Quando clicar em "Cadastre-se para fazer entregas"
Então o sistema retornara com "Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato."

