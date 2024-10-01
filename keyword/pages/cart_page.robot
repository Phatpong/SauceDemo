*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Variables ***
${cart_reward}    # ตัวแปร Reward ไว้เทียบค่า

*** Keywords ***
Query Reward In Cart
    ${cart_reward}=    Create List 
    ${all_reward_elements}=    common.Get All Element when ready    ${reward_name_cart}
    ${length_of_rewards}=    common.Get Length Element when ready    ${all_reward_elements}
    
    FOR  ${index}  IN RANGE    ${length_of_rewards}
        ${one_name_element}=    common.Get From List when ready    ${all_reward_elements}    ${index}
        ${text_reward_name}=    common.Get text Element when ready    ${one_name_element}
        Append To List    ${cart_reward}    ${text_reward_name}   
    END

    Log To Console    Rewards From Landing Page :: ${add_to_cart_reward}
    Log To Console   Rewards in Cart :: ${cart_reward}
    Set Global Variable    ${cart_reward}
    
Verify Reward In Cart and CheckOut
    ${are_equal}=    Evaluate    ${add_to_cart_reward} == ${cart_reward}
    Run Keyword If    ${are_equal}    Log To Console    Rewards Equal
    Run Keyword If    ${are_equal}    common.Click Element when ready    ${button_checkout}
    Run Keyword If    not ${are_equal}    Log To Console    Rewards not Equal !!!
    
Click CheckOut
    common.Click Element when ready    ${button_checkout}
