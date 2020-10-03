*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Enter email and click create account
    input text    xpath=//input[@id='email_create']    ${EMAIL}
    click button    xpath=//button[@id="SubmitCreate"]

Create Account Page Validate
    wait until page contains    Your personal information


Enter Personal Info to register
    select radio button    id_gender    1
    input text    xpath=//input[@id='customer_firstname']    ${FIRST_NAME}
    input text    xpath=//input[@id='customer_lastname']    ${LAST_NAME}
    input text    xpath=//input[@id='email']    ${EMAIL}
    input password    xpath=//input[@id='passwd']    ${PASSWORD}
    select from list by value    xpath=//select[@id='days']    15
    select from list by value    xpath=//select[@id='months']    8
    select from list by value    xpath=//select[@id='years']    1992
    select checkbox    xpath=//input[@id='newsletter']
    select checkbox    xpath=//input[@id='optin']
    input text    xpath=//input[@id='address1']    ${ADDRESS1}
    input text    xpath=//input[@id='address2']    ${ADDRESS2}
    input text    xpath=//input[@id='city']    ${CITY}
    select from list by value    xpath=//select[@id='id_state']    ${STATE}
    input text    xpath=//input[@id='postcode']    ${ZIPCODE}
    select from list by value    xpath=//select[@id='id_country']    ${COUNTRY}
    input text    xpath=//textarea[@id='other']    ${TEXT_INFO}
    input text    xpath=//input[@id='phone_mobile']    ${MOBILE}
    input text    xpath=//input[@id='alias']    ${ADDRESS_ALIAS}


Register
    click button    xpath=//button[@id="submitAccount"]

Enter credentials to Sign In
    input text    xpath=//input[@id='email']  ${LOGIN_ID}
    input password    xpath=//input[@id='passwd']  ${PASSWORD}

Sign In
    click button    xpath=//button[@id="SubmitLogin"]