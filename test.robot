*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}        http://vbsca.ca/login/login.asp
${Browswe}    Chrome
${Username}    huyenpt
${Password}    123456

*** Test Cases ***

Đăng nhập thành công
    Open Browser     ${URL}    ${Browswe}
    Nhập Username    name=txtUsername    ${Username}
    Nhập Password    //input[@name='txtPassword']    ${Password} 
    Đăng nhập    //input[@value='Login']


*** Keywords ***
Nhập Username
    [Arguments]    ${xpath}    ${Value}
    Input Text    ${xpath}    ${Value}

 Nhập Password
    [Arguments]    ${xpath}    ${Value}
    Input Text   ${xpath}    ${Value} 

Đăng nhập
    [Arguments]    ${xpath}
    Click Button    ${xpath}