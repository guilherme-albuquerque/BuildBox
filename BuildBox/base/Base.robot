*** Settings ***
Documentation       Acesso site
Library             Browser
Resource            ../locators/variables.robot

*** Keywords ***
Dado que acesse o site
    New Browser    chromium    headless=false
    New Context    ignoreHTTPSErrors=true    viewport={'width':1366, 'height': 768}
    New Page       ${url}