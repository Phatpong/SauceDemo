*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot
*** Variables ***

*** Test Cases ***
TC-1 Query Reward In Cart 
    cart_page.Query Reward In Cart
    

TC-2 Verify Reward In Cart and checkout
    cart_page.Verify Reward In Cart and CheckOut