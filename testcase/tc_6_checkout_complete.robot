*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot
Suite Teardown    Close Browser

*** Variables ***

*** Test Cases ***
TC-1 Back Home
     checkout_complete_page.Back to Home