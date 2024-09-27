*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot

*** Variables ***

*** Test Cases ***
TC-1 Click Continue โดยไม่ใส่ information
     checkout_step1_page.Type information    ${EMPTY}    ${EMPTY}    ${EMPTY}

TC-2 Click Continue โดยไม่ใส่ LastName และ Postal Code
    checkout_step1_page.Type information    FirstName    ${EMPTY}    ${EMPTY}

TC-3 Click Continue โดยไม่ใส่ FirstName และ Postal Code
    checkout_step1_page.Type information    ${EMPTY}    LastName    ${EMPTY}
    
TC-4 Click Continue โดยใส่ information
    checkout_step1_page.Type information    FirstName    LastName    Postal Code
    