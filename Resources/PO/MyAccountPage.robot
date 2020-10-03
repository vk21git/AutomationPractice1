*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

Go to "Casual dresses"
    mouse over    xpath=//li/a[@title='Women']
    wait until page contains element    xpath=//li/a[@title='Casual Dresses']
    click element    xpath=//li/a[@title='Casual Dresses']


Add to cart "Printed Dress"
    mouse over    xpath=//a[@title='Printed Dress']
    click element    xpath=//a[@title='Add to cart']
    wait until page contains element    xpath=//div[@class="clearfix"]

Checkout and pay
    mouse over    xpath=//a[@class="btn btn-default button button-medium"]
    click element    xpath=//a[@class="btn btn-default button button-medium"]
    wait until page contains    Shopping-cart summary
    click element    xpath=//p/a[@title="Proceed to checkout"]
    wait until page contains    Addresses
    click button    xpath=//button[@name="processAddress"]
    wait until page contains    Shipping
    select checkbox    xpath=//input[@id='cgv']
    click button    xpath=//button[@name="processCarrier"]
    wait until page contains    Please choose your payment method
    click element    xpath=//a[@title="Pay by bank wire"]
    wait until page contains    Order summary
    click button    xpath=//button[@class="button btn btn-default button-medium"]
    wait until page contains    Your order on My Store is complete