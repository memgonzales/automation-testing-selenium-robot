*** Settings ***
Documentation   A test suite with test cases for the SeleniumIDE and RobotFramework
...             exercise in STSWENG - Advanced Software Engineering 
...
...             This test concerns the dummy website https://www.saucedemo.com/
...
...             This test follows the example using keywords from the SeleniumLibrary
Resource        resources.robot

*** Test Cases ***
Successful user log in
    Open Browser to Login Page
    # Input username
    Input Username   ${VALID USER}
    # Input password
    Input Pass    ${VALID PASSWORD}
    Submit Credentials
    Product Page Should Be Open
    # Close browser
    [Teardown]  Close Browser

Unsuccessful user log in by a locked out user
    Open Browser to Login Page
    # Input username
    Input Username   ${LOCKED OUT USER}
    # Input password
    Input Pass    ${VALID PASSWORD}
    Submit Credentials
    # Error message is "Epic sadface: Sorry, this user has been locked out."
    Error Message Shown     Epic sadface: Sorry, this user has been locked out.
    # Close browser
    [Teardown]  Close Browser

Typed wrong password
    Open Browser To Login Page
    # Input username
    Input Username   ${VALID USER}
    # Input password
    Input Pass   ${INVALID PASSWORD} 
    Submit Credentials
    # Error message is "Epic sadface: Username and password do not match any user in this service"
    Error Message Shown     Epic sadface: Username and password do not match any user in this service
    # Close browser
    [Teardown]  Close Browser

Logged in as problem user and sees a broken inventory page
    Open Browser To Login Page
    # Input username
    Input Username   ${PROBLEM USER}
    # Input password
    Input Pass   ${VALID PASSWORD} 
    Submit Credentials
    # Product page should show broken inventory
    Product Page Should Show Broken Inventory
    # Close browser
    [Teardown]  Close Browser

Sort product name (A to Z)
    Log In As Valid User
    # Select from dropdown
    Select From Dropdown    ${A TO Z}
    # Product page should show sorted products
    Sort Products   ${PRODUCTS}[0]  ${PRODUCTS}[1]  ${PRODUCTS}[2]  ${PRODUCTS}[3]  ${PRODUCTS}[4]  ${PRODUCTS}[5]
    # Close browser
    [Teardown]  Close Browser

Sort product name (Z to A)
    Log In As Valid User
    # Select from dropdown
    Select From Dropdown    ${Z TO A}
    # Product page should show sorted products
    Sort Products   ${PRODUCTS}[5]  ${PRODUCTS}[4]  ${PRODUCTS}[3]  ${PRODUCTS}[2]  ${PRODUCTS}[1]  ${PRODUCTS}[0]
    # Close browser
    [Teardown]  Close Browser

Sort product price (low to high)
    Log In As Valid User
    # Select from dropdown
    Select From Dropdown    ${LOW TO HIGH}
    # Product page should show sorted products
    Sort Products   ${PRODUCTS}[4]  ${PRODUCTS}[1]  ${PRODUCTS}[2]  ${PRODUCTS}[5]  ${PRODUCTS}[0]  ${PRODUCTS}[3]
    # Close browser
    [Teardown]  Close Browser

Sort product price (high to low)
    Log In As Valid User
    # Select from dropdown
    Select From Dropdown    ${HIGH TO LOW}
    # Product page should show sorted products
    Sort Products   ${PRODUCTS}[3]  ${PRODUCTS}[0]  ${PRODUCTS}[2]  ${PRODUCTS}[5]  ${PRODUCTS}[1]  ${PRODUCTS}[4]
    # Close browser
    [Teardown]  Close Browser