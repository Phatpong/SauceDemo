*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
# Type FirstName
#     [Arguments]    ${locators}
#     common.Type Element when ready    ${input_firstname}    ${locators}

# Type LastName
#     [Arguments]    ${locators}
#     common.Type Element when ready    ${input_lastname}    ${locators}

# Type Zip
#     [Arguments]    ${locators}
#     common.Type Element when ready    ${input_zip}    ${locators}

Type information
    [Arguments]    ${locators_firstName}    ${locators_lastName}    ${locators_Zip}
    common.Type Element when ready    ${input_firstname}    ${locators_firstName}
    common.Type Element when ready    ${input_lastname}    ${locators_lastName}
    common.Type Element when ready    ${input_zip}    ${locators_Zip}
    common.Click Element when ready    ${button_continue}
    login_page.Get Text from Error