*** Settings ***
Library    Browser
Resource    ../Keywords/Xpath.resource

*** Keywords ***

Mở trang web todomvc
    New Page    ${URL}

Tạo một công việc cần làm
    [Arguments]    ${task}
    Type Text    ${input}    ${task}
    Press Keys    ${input}    Enter

Hoàn thành công việc đầu tiên
    Click    ${Toggle}

Nhấn button All
    Click    ${Button_All}

Nhấn button Active
    Click    ${Button_Active}

Nhấn button Completed
    Click    ${Button_Completed}

Nhấn button Clear Completed
    Click    ${Clear_completed}
    



