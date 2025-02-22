*** Settings ***
Resource    ../resources/pages/add_to_cart_keyword.robot
Resource    ../resources/pages/login_keyword.robot
Resource    ../resources/keywords/commons.robot
Test Teardown    Close Current Browser

*** Test Cases ***
User wants to add item to cart
  Open Login page
  Input Username and Password
  Login success
  Choose Sauce Labs Bike Light and add it to cart
  Verify correct item already added in cart
