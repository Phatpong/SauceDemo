*** Variables ***
# Reward List
${reward_list}    //div/div[@class="inventory_list"]
${reward_items}    //div[@class="inventory_item"]
${reward_name}    //div[@class="inventory_item_label"]//a[@href="#"]
${reward_description}  //div[@class="inventory_item_label"]//div[@class="inventory_item_desc"]
${reward_price}    //div[@class="pricebar"]//div[@class="inventory_item_price"]

#Reward Cart
${reward_list_cart}    //div[@class="cart_list"]
${reward_items_cart}    //div[@class="cart_item"]
${reward_items_label}    //div[@class="inventory_item_name"]
${reward_name_cart}    //div[@class="cart_item_label"]//a[@href="#"]
${reward_description_cart}    //div[@class="cart_item_label"]//div[@class="inventory_item_desc"]
${reward_price_cart}    //div[@class="item_pricebar"]
${reward_total_price}    //div[@class="summary_subtotal_label"]

#text for validate
${thank_you}    //h2[@class="complete-header"]