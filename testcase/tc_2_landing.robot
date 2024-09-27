*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot

*** Variables ***

*** Test Cases ***
TC-1 Query Reward In List
    landing_page.Query Reward In List
    

TC-2 Add to Cart and Go to Cart
    landing_page.Add All Reward to Cart    กางเกง
    landing_page.Click Cart