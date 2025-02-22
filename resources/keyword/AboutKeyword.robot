*** Settings ***
Library      SeleniumLibrary
Resource    ../locators/AddtocartPage.robot
Resource    ../locators/ProductPage.robot

*** Keywords ***
Click Menu Choose About
  Wait Until Page Contains Element    ${TXT_PRODUCT_NAME}
  Wait Until Page Contains Element    ${MENU_BUTTON}      timeout=5second
  Click Element                       ${MENU_BUTTON}
  Wait Until Element Is Visible       ${ABOUT_MENU}       timeout=5second
  Click Element                       ${ABOUT_MENU}
#  Click Element             id=react-burger-menu-btn
#  Wait Until Element Is Visible    xpath=//a[@id='about_sidebar_link']
#  Click Element    xpath=//a[@id='about_sidebar_link']

Success see About page
  Wait Until Page Contains    Sauce Labs
  Page Should Contain         Sauce Labs