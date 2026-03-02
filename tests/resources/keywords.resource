*** Settings ***
Library    Browser

*** Keywords ***
Open Test Browser
    # Launch Playwright via Browser library
    New Browser    chromium    headless=${TRUE}
    New Context    viewport={'width': 1366, 'height': 768}
    New Page       about:blank

Take Screenshot On Failure
    Run Keyword If    '${TEST_STATUS}'!='PASS'    Take Screenshot    fullPage=${TRUE}
