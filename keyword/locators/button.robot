*** Variables ***
#CLICKCLICK
${button_login}    //input[@class="submit-button btn_action"]
${button_error}    //button[@class="error-button"]
${button_add_to_cart}    //div[@class="inventory_item"]//button[@class="btn btn_primary btn_small btn_inventory "]
${button_cart}    id=shopping_cart_container
${button_checkout}    //button[@class="btn btn_action btn_medium checkout_button "]
${button_continue}   //input[@name="continue"]
${button_continue_shopping}    id=continue-shopping
${button_finish}    //button[@class="btn btn_action btn_medium cart_button"]
${button_cancel}    id=cancel
${button_back_home}    //button[@name="back-to-products"]

#SELECT_FILTER
${button_select_filter}    //select[@class="product_sort_container"]
${select_az}    //select[@class="product_sort_container"]//option[@value="az"]
${select_za}    //select[@class="product_sort_container"]//option[@value="za"]
${select_lohi}    //select[@class="product_sort_container"]//option[@value="lohi"]
${select_hilo}    //select[@class="product_sort_container"]//option[@value="hilo"]