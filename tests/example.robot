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
    Close Browser
