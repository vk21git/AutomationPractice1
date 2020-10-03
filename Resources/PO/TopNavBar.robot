*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
"Sign In" page open
    click element    xpath=//a[@title='Log in to your customer account']
    wait until page contains    Authentication