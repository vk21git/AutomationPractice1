*** Settings ***

Library    SeleniumLibrary

Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/SignInPage.robot
Resource    ../Resources/PO/TopNavBar.robot
Resource    ../Resources/PO/MyAccountPage.robot
*** Variables ***

*** Keywords ***

Open "Landing" page
    "Landing" page open

Open "Sign In" Page
    "Sign In" page open

Create New Account
    Enter email and click create account

Validate Create Account Page
    Create Account Page Validate

Enter personal info and register
    Enter Personal Info to register
    Register

SignIn to existing account
    Enter credentials to Sign In
    Sign In

Buy Printed Dress
    Go to "Casual dresses"
    Add to cart "Printed Dress"
    Checkout and pay
