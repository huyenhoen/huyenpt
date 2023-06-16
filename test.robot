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


* Settings *
Library           SeleniumLibrary

* Variables *
${BROWSER}        chrome
${URL}            http://example.com
@{USERS}          johndoe    janedoe    bobsmith
@{PASSWORDS}      password1    password2    password3

* Test Cases *
Login Test
    [Documentation]    Test login with multiple users and passwords
    @{user_passwords}    Create List    @{USERS}    @{PASSWORDS}
    Open Browser          ${URL}           ${BROWSER}
    :FOR    ${user_password}    IN    @{user_passwords}
    \   ${username}    ${password}    Split List    ${user_password}
    \   Đăng nhập       id=username_input    ${username}
    \   Đăng nhập       id=password_input    ${password}
    \   Click Button    id=login_button
    \   Wait Until Page Contains    Welcome, ${username}
    Close Browser
Example Domain