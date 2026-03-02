*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.python.org/

*** Test Cases ***
Open Example Page And Verify Title
    New Browser    chromium
    New Context
    New Page    ${URL}
    Get Title    ==    Welcome to Python.org
    Wait For Elements State    text=Functions Defined    visible
    Get Text    h1    ==    Functions Defined
    Close Browser
