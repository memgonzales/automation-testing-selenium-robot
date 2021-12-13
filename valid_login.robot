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