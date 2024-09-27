*** Settings ***
Resource    ${CURDIR}/import.robot

*** Keywords *
Open Website
    Open Browser    ${website.baseUrl}    ${website.browser}
    # Maximize Browser Window
    Set Window Size    1440    900

Close Website
    Close Browser    

Click Element when ready
    [Arguments]    ${locator}    ${time}=${waitingTime.short}
    Wait Until Element Is Visible  ${locator}    ${time}
    Click Element    ${locator}

Type Element when ready
    [Arguments]    ${locator}    ${input_text}    ${time}=${waitingTime.short}
    Wait Until Element Is Visible    ${locator}    ${time}
    Input Text    ${locator}    ${input_text}    

Wait Element visible 
    [Arguments]    ${locators}    ${time}=${waitingTime.short}
     Wait Until Element Is Visible    ${locators}    ${time}

Get text Element when ready
    [Arguments]    ${locators}    ${time}=${waitingTime.short}
    Wait Until Element Is Visible    ${locators}    ${time}
    ${Msg_element}=    Get Text    ${locators}
    RETURN    ${Msg_element}

Get All Element when ready
    [Arguments]    ${locators}    ${time}=${waitingTime.short}
    Wait Until Element Is Visible    ${locators}    ${time}
    ${Msg_element}=    Get WebElements   ${locators}
    RETURN    ${Msg_element}

Get one Element when ready
    [Arguments]    ${locators}    ${time}=${waitingTime.short}
    Wait Until Element Is Visible    ${locators}    ${time}
    ${Msg_element}=    Get WebElement   ${locators}
    RETURN    ${Msg_element}

Get Length Element when ready
    [Arguments]    ${locators}    ${time}=${waitingTime.short}
    ${Length_element}=    Get Length    ${locators}
    RETURN    ${Length_element}

Get From List when ready
    [Arguments]    ${locators_elements}    ${locators_index_elements}    ${time}=${waitingTime.short}
    ${List_element}=    Get From List    ${locators_elements}    ${locators_index_elements}
    RETURN    ${List_element}

Click And Append Element To List
    [Arguments]    ${index}    ${locators_elements}    ${text_reward_name}    @{add_to_cart_reward}
    ${elements}=    Get From List    ${locators_elements}    ${index}
    Click Element when ready   ${elements}    
    Append To List    @{add_to_cart_reward}    ${text_reward_name}

Click And Log to Console
    [Arguments]    ${locator}    ${locators_msg}    ${time}=${waitingTime.short}
    Wait Until Element Is Visible  ${locator}    ${time}
    Click Element    ${locator}
    Log To Console    ${locators_msg}