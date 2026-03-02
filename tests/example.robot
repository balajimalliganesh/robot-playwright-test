*** Settings ***
Documentation     Example suite using Robot Framework Browser (Playwright).
Library           Browser
Resource          resources/keywords.resource
Suite Setup       Open Test Browser
Suite Teardown    Close All Browsers
Test Teardown     Take Screenshot On Failure

*** Variables ***
${BASE_URL}       https://robotframework.org/

*** Test Cases ***
Open Homepage And Validate Title
    [Tags]    smoke
    Go To    ${BASE_URL}
    Get Title Should Contain    Robot Framework

Search Docs And Open A Result
    [Tags]    regression
    Go To    ${BASE_URL}
    Click    text=Docs
    Wait For Elements State    h1 >> text=Documentation    visible    10s
    Get Text Should Contain    h1    Documentation

*** Keywords ***
Get Title Should Contain
    [Arguments]    ${expected}
    ${title}=    Get Title
    Should Contain    ${title}    ${expected}
