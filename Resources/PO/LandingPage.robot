*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

"Landing" page open
    go to    ${URL}
    wait until page contains    0123-456-789