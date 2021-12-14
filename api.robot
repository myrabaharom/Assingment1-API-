*** Settings ***
Documentation   Suite description
Library    SeleniumLibrary

*** Keywords ***
Login
     [arguments]  ${email}  ${password}
     Open Browser   url=https://app.deriv.com   browser=chrome
     Set Window Size  1280  1280
    # wait until page contains element  dt_core_header_acc-info-preloader   60
     Wait Until Page Contains Element   ${login_btn}   15
     Click Element    ${login_btn}
     Wait Until Page Contains Element   ${email_field}   15
     Input Text      ${email_field}     ${email}
     Input Text      ${pw_field}    ${password}
     click element   ${login_oauth_btn}
     wait until page does not contain element    ${login_oauth_btn}

CreateApi
     wait until page does not contain element  dt_core_header_acc-info-preloader   60
     wait until page contains element  ${account_icon}
     Click Element   ${account_icon}
     wait until page contains element    ${api_tab}
     Click Element    ${api_tab}
     wait until page contains element  ${trade_btn}
     Click Element   ${trade_btn}
     Click Element   ${token_name}
     Input Text   ${token_name}    hime
     Click Element   ${create_btn}

DeleteApi
    wait until page contains element   ${delete_btn}
    Click Element    ${delete_btn}
    wait until page contains element   ${yes_btn}
    Click Element   ${yes_btn}

DeactivateAccount
    wait until page contains element   ${deactivate_btn}
    Click Element   ${deactivate_btn}
    wait until page contains element  ${continue_btn}
    Click Element  ${continue_btn}
    Click Element  ${first_choice}
    Click Element  ${second_choice}
    Click Element  ${third_choice}
    wait until page contains element   ${continue_btn}
    Click Element  ${continue_btn}
    wait until page contains element   ${really_deactivate}



