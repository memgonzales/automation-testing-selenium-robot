*** Settings ***
Documentation   A resource file with reusable keywords and variables.
...
...             Creating system specific keywords from default keywords from SeleniumLibrary
Library         SeleniumLibrary

*** Variables ***
${SERVER}           www.saucedemo.com
${BROWSER}          chrome
${DELAY}            0
${VALID USER}       standard_user
${LOCKED OUT USER}  locked_out_user
${VALID PASSWORD}   secret_sauce
${INVALID PASSWORD} secret_acuces
${LOGIN URL}        https://${SERVER}/
${HOME URL}         https://${SERVER}/inventory.html


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Page Should Contain Element     login-button

Product Page Should Be Open
    Element Text Should Be  class:title     PRODUCTS

Input Username
    [Arguments]     ${username}
    Input Text  user-name   ${username}

Input Pass
    [Arguments]     ${password}
    Input Password  password   ${password}

Submit Credentials
    Click Button    login-button

Error Message Shown
    [Arguments]     ${error}
    Element Text Should Be  css:*[data-test="error"]    ${error}