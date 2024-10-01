*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Variables ***
${add_to_cart_reward}    # ตัวแปร ไว้เทียบค่า

*** Keywords ***
Query Reward In List
     ${reward_items_va}=    common.Get All Element when ready    ${reward_name}

    FOR    ${one_element}    IN    @{reward_items_va}
        ${get_text}=    common.Get text Element when ready    ${one_element}
        Log To Console    Landing Reward :: ${get_text}
        
    END
   
Add All Reward to Cart
    [Arguments]    ${locators_result}
    ${all_reward_elements}=    common.Get All Element when ready    ${reward_items}
    ${length_of_rewards}=    common.Get Length Element when ready    ${all_reward_elements}
    
    ${all_button_elements}=    common.Get All Element when ready    ${button_add_to_cart}
    ${length_of_button}=    common.Get Length Element when ready    ${all_button_elements}

    ${all_name_elements}=    common.Get All Element when ready    ${reward_name}
    ${length_of_name}=    common.Get Length Element when ready    ${all_name_elements}
    
    ${add_to_cart_reward}=    Create List

    FOR  ${index}  IN RANGE     ${length_of_name}
        ${one_name_element}=    common.Get From List when ready    ${all_name_elements}    ${index}
        ${text_reward_name}=    common.Get text Element when ready    ${one_name_element}

        ${result}=    Evaluate    '${locators_result}' in '${text_reward_name}'  
        Run Keyword If    ${result}    Click And Append Element To List    ${index}    ${all_button_elements}    ${text_reward_name}    ${add_to_cart_reward}
    END

    Run Keyword If    "${add_to_cart_reward}" == "[]"    Run Keywords    Log To Console    No rewards found, closing browser.    AND    common.Close Website

    Set Global Variable    ${add_to_cart_reward}

    Log To Console    Add Rewards to Cart:: ${add_to_cart_reward}
        
Click Cart
    common.Click Element when ready    ${button_cart}
    
     

    
   
    

