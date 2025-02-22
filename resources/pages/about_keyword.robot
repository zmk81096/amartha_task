*** Settings ***
Library      SeleniumLibrary
Resource    ../locators/add_to_cart_page.robot
Resource    ../locators/product_page.robot

*** Keywords ***
Click Menu Choose About
  Wait Until Page Contains Element    ${TXT_PRODUCT_NAME}
  Wait Until Page Contains Element    ${MENU_BUTTON}      timeout=5second
  Click Element                       ${MENU_BUTTON}
  Wait Until Element Is Visible       ${ABOUT_MENU}       timeout=5second
  Click Element                       ${ABOUT_MENU}

Success see About page
  Wait Until Page Contains    Sauce Labs
  Page Should Contain         Sauce Labs