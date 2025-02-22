*** Settings ***
Resource    ../resources/pages/AddToCartKeyword.robot
Resource    ../resources/pages/LoginKeyword.robot
Resource    ../resources/keywords/Commons.robot
Test Teardown    Close Current Browser

*** Test Cases ***
User wants to add item to cart
  Open Login page
  Input Username and Password
  Login success
  Choose Sauce Labs Bike Light and add it to cart
  Verify correct item already added in cart
