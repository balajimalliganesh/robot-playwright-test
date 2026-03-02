*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://the-internet.herokuapp.com/abtest

*** Test Cases ***
Open Example Page And Verify Title
    New Browser    chromium
    New Context
    New Page    ${URL}
    Get Title    ==    The Internet
    Wait For Elements State    text=A/B Test Variation 1    visible
    Get Text    h3    ==    A/B Test Variation 1
    Close Browser
