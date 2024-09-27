*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Variables ***
${price_list}    # ตัวแปร Price ไว้เทียบค่า

*** Keywords ***
Validate Price and Click Finish
   Log To Console    Reward From Cart :: ${cart_reward}

    ${price_list}=    Create List
    
    ${get_price_elements}=    common.Get All Element when ready    ${reward_price_cart}
    ${get_length_price_elements}=    common.Get Length Element when ready    ${get_price_elements}

    ${get_price}=    common.Get text Element when ready    ${reward_total_price}

   FOR  ${index}  IN RANGE  ${get_length_price_elements}
    ${one_price_element}=    common.Get From List when ready    ${get_price_elements}    ${index}
    ${get_text_price}=    common.Get text Element when ready    ${one_price_element}
    Append To List    ${price_list}    ${get_text_price}
    END

    ${cleaned_prices}=    Create List

    ${total}=    Set Variable    0.00
    FOR  ${price}  IN  @{price_list}
        ${cleaned_price}=    Replace String    ${price}    $    ${EMPTY} 
        ${cleaned_price}=    Convert To Number    ${cleaned_price}    2  
        ${total}=    Evaluate    ${total} + ${cleaned_price}  
        ${total}=    Convert To String    ${total}
    END

    ${expected_total}=    Set Variable    Item total: $${total}

    ${real_price}=    Evaluate     '${get_price}' == '${expected_total}'
    
    Run Keyword If    ${real_price}    Run Keywords    Log To Console    ราคาถูกต้อง จ่ายได้ !!    AND    common.Click Element when ready    ${button_finish}
    Run Keyword If    not ${real_price}    Run Keywords    Log To Console    ราคาไม่ถูกต้อง ช้าก่อน !!    AND    common.Click Element when ready    ${button_cancel}   
        

        

