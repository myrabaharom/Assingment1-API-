*** Settings ***
Documentation    API Token Assignments (Assignments 1)
Resource   api.robot

*** Variable ***
${login_btn}      dt_login_button
${email_field}   name=email
${pw_field}     //*[@type="password"]
${login_oauth_btn }     //*[text()="Log in"]
${account_icon}   //*[@id="dt_core_header_acc-info-container"]/div[2]/div
${api_tab}    //*[@id="dc_api-token_link"]
${trade_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[2]
${token_name}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/div/input
${create_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[2]/div[2]/div/div/div/button
${delete_btn}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/button
${yes_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[3]/div[2]/div/div/table/tbody/tr/td[5]/div/button[2]
${deactivate_btn}   //*[@id="dc_deactivate-account_link"]
${continue_btn}    //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/button
${first_choice}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[1]/span[2]
${second_choice}  //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[2]/span[2]
${third_choice}   //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/label[3]/span[2]
${really_deactivate}   //*[@id="modal_root"]/div/div/div/div[2]/button[2]


*** Keywords ***


*** Test Cases ***
Open Deriv
    Login  ${VALID_EMAIL}     ${VALID_PW}
    CreateApi
    DeleteApi
    DeactivateAccount