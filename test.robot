*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${URL}        https://op.kvfnb.vip/auth/sign-in
${Browser}    Chrome
${xpath1}    //input[@type='text']
${xpath2}    //input[@type='password']
${xpath3}    //button[@type='button']
${xpath4}    //a[@class='menu-bar-action']

*** Test Cases ***

Đăng nhập thành công
    Mở tool và Đăng nhập
    Nhập Username    support
    Nhập Password    kvfnb@2025
    Nhấn button Đăng nhập 
    Đăng nhập thành công

Nhập Username sai
    Mở tool và Đăng nhập
    Nhập Username    suppott
    Nhập Password    kvfnb@2025
    Nhấn button Đăng nhập   
    Đăng nhập thất bại

Nhập Password sai
    Mở tool và Đăng nhập
    Nhập Username     support
    Nhập Password    kvfnb@2026
    Nhấn button Đăng nhập
    Đăng nhập thất bại

Nhập User và Password sai
    Mở tool và Đăng nhập
    Nhập Username    suppott
    Nhập Password    kvfnb@2026
    Nhấn button Đăng nhập
    Đăng nhập thất bại

Không nhập Username, Password
    Mở tool và Đăng nhập
    Nhấn button Đăng nhập
    Đăng nhập thất bại

*** Keywords ***

Mở tool và Đăng nhập

    Open Browser    ${URL}    ${Browser}
    Wait Until Page Contains    Đăng nhập
Nhập Username
    [Arguments]   ${value}
    Wait Until Element Is Visible    ${xpath1}
    Input Text    ${xpath1}    ${value}

Nhập Password
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${xpath2}
    Input Password    ${xpath2}    ${value}
    
Nhấn button Đăng nhập
    Wait Until Element Is Visible    ${xpath3}
    Click Button    ${xpath3}

Đăng nhập thành công
    Wait Until Element Is Visible    ${xpath4}        


Đăng nhập thất bại
