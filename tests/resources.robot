*** Settings ***
Documentation   A resource file with reusable keywords and variables.
...
...             Creating system specific keywords from default keywords from SeleniumLibrary
Library         SeleniumLibrary

*** Variables ***
${SERVER}               www.saucedemo.com
${BROWSER}              chrome
${DELAY}                0
${VALID USER}           standard_user
${LOCKED OUT USER}      locked_out_user
${PROBLEM USER}         problem_user
${VALID PASSWORD}       secret_sauce
${INVALID PASSWORD}     secret_acuces 
${LOGIN URL}            https://${SERVER}/
${HOME URL}             https://${SERVER}/inventory.html
${A TO Z}               az
${Z TO A}               za
${LOW TO HIGH}          lohi
${HIGH TO LOW}          hilo
@{PRODUCTS}             Sauce Labs Backpack     Sauce Labs Bike Light       Sauce Labs Bolt T-Shirt       Sauce Labs Fleece Jacket      Sauce Labs Onesie       Test.allTheThings() T-Shirt (Red)

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

Product Page Should Show Broken Inventory
    Page Should Contain Element     css=*[src="/static/media/sl-404.168b1cce.jpg"]

Select From Dropdown    
    [Arguments]     ${value}
    Select From List By Value   css=*[data-test="product_sort_container"]      ${value}

Sort Products
    [Arguments]     ${value1}   ${value2}   ${value3}   ${value4}   ${value5}   ${value6}
    Element Text Should Be  xpath=/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div  ${value1}
    Element Text Should Be  xpath=/html/body/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[1]/a/div  ${value2}
    Element Text Should Be  xpath=/html/body/div/div/div/div[2]/div/div/div/div[3]/div[2]/div[1]/a/div  ${value3}
    Element Text Should Be  xpath=/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[1]/a/div  ${value4}
    Element Text Should Be  xpath=/html/body/div/div/div/div[2]/div/div/div/div[5]/div[2]/div[1]/a/div  ${value5}
    Element Text Should Be  xpath=/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[1]/a/div  ${value6}

Log In As Valid User
    Open Browser To Login Page
    Input Username   ${VALID USER}
    Input Pass   ${VALID PASSWORD} 
    Submit Credentials