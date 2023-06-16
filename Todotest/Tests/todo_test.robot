*** Settings ***
Library    Browser
Resource    ../Keywords/Keywords.resource
Resource    ../Keywords/Xpath.resource
Suite Setup    New Browser    browser=${Browser}    headless=${HEADLESS}

*** Variables ***
${Browser}    chromium
${HEADLESS}    False

*** Test Cases ***

Tạo công việc cần làm
    Mở trang web todomvc
    Tạo một công việc cần làm    Task 1
    Tạo một công việc cần làm    Task 2
    Tạo một công việc cần làm    Task 3
    Wait For


Hoàn thành công việc
    Mở trang web todomvc
    Tạo một công việc cần làm    Task 1
    Hoàn thành công việc đầu tiên

Kiểm tra tất cả công việc
    Mở trang web todomvc
    Tạo một công việc cần làm    Task 1
    Tạo một công việc cần làm    Task 2
    Tạo một công việc cần làm    Task 3
    Hoàn thành công việc đầu tiên
    Nhấn button All

Kiểm tra công việc đang làm
    Mở trang web todomvc
    Tạo một công việc cần làm    Task 1
    Tạo một công việc cần làm    Task 2
    Tạo một công việc cần làm    Task 3
    Hoàn thành công việc đầu tiên
    Nhấn button Active

Kiểm tra công việc đã hoàn thành
    Mở trang web todomvc
    Tạo một công việc cần làm    Task 1
    Tạo một công việc cần làm    Task 2
    Tạo một công việc cần làm    Task 3
    Hoàn thành công việc đầu tiên
    Nhấn button Completed

Xóa công việc đã hoàn thành
    Mở trang web todomvc
    Tạo một công việc cần làm    Task 1
    Tạo một công việc cần làm    Task 2
    Tạo một công việc cần làm    Task 3
    Hoàn thành công việc đầu tiên
    Nhấn button Clear Completed