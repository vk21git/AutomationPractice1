*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/officeApp.robot
Resource    ../Resources/VarFile.robot
Test Setup    Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
User should be able to register successfully
    Open "Landing" page
    Open "Sign In" Page
    Create New Account
    Validate Create Account Page
    Enter personal info and register


User should be able to Sign In
    Open "Landing" page
    Open "Sign In" Page
    SignIn to existing account


User should be able to shop from MyAccount
    Open "Landing" page
    Open "Sign In" Page
    SignIn to existing account
    Buy Printed Dress
