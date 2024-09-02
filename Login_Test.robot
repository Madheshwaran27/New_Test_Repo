*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Login Test
    Open Browser    https://www.saucedemo.com    chrome    options=add_argument("--incognito")
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_sauce
    Click Element    //*[@id="login-button"]
    Sleep    3s
    Close Browser
