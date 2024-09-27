*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot

*** Variables ***

*** Test Cases ***
TC-1 Login โดยไม่ใส่ username และ password
    common.Open Website
    login_page.Login to Swag Labs    ${EMPTY}    ${EMPTY}
    
TC-2 Login โดยไม่ใส่ password 
    login_page.Login to Swag Labs    standard_user    ${EMPTY}

TC-3 Login โดยไม่ใส่ username
    login_page.Login to Swag Labs    ${EMPTY}    abasccas
    
TC-4 Login โดยใส่ username ถูกต้อง แต่ password ผิด
    login_page.Login to Swag Labs    standard_user    asdab

TC-5 Login โดยใส่ username และ password ถูกต้อง
    login_page.Login to Swag Labs    standard_user    secret_sauce
    

    

