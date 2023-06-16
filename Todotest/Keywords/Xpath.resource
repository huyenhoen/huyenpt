*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://todomvc.com/examples/angularjs/#/active
${input}    input.new-todo
${Toggle}    li:first-child >> input.toggle
${Button_All}    //a[@href='#/']
${Button_Active}    //a[@href='#/active']
${Button_Completed}    //a[@href='#/completed']
${Delete}    button.destroy
${Clear_completed}    button.clear-completed