*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***

Login to Swag Labs
    [Arguments]    ${locators_username}    ${locators_password}   
    common.Type Element When Ready    ${username}    ${locators_username}
    common.Type Element When Ready    ${password}    ${locators_password}
    common.Click Element when ready    ${button_login}    
    Get Text from Error

Get Text from Error
    ${Status_error}=    Run Keyword And Return Status    common.Wait Element visible    ${input_error}
    IF  '${Status_error}'=='True'
        ${Status_error}=    Get Text    ${input_error}
        Log To Console    ${Status_error}
        common.Click Element when ready    ${button_error}
    ELSE   
        Log To Console    'Success'
    END
     
    