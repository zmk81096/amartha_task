*** Settings ***
Library     SeleniumLibrary
Resource    ../../config/environments.robot
Resource    ../locators/add_to_cart_page.robot
Resource    ../locators/product_page.robot

*** Keywords ***
Choose Sauce Labs Bike Light and add it to cart
  Wait Until Page Contains Element    ${TXT_PRODUCT_NAME}
  Wait Until Page Contains Element    ${TXT_PRODUCT_NAME}
  Click Element                       ${ADDTOCART_ITEM}
  Sleep                               3s

Verify correct item already added in cart
  Click Element                       ${ADDTOCART_BUTTON}
  Wait Until Page Contains Element    ${CART_TITLE}
  Wait Until Page Contains Element    ${TXT_ITEMNAME}       timeout=15second
  Element Text Should Be              ${TXT_ITEMNAME}       Sauce Labs Bike Light
  Element Text Should Be              ${TXT_PRICE}          $9.99
  Element Text Should Be              ${TXT_QUANTITY}       1