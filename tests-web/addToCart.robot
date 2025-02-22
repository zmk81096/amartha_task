*** Settings ***
Resource    ../resources/keyword/AddToCartKeyword.robot
Resource    ../resources/keyword/LoginKeyword.robot

*** Test Cases ***
User wants to add item to cart
  Open Login page
  Input Username and Password
  Login success
  Choose Sauce Labs Bike Light and add it to cart
  Verify correct item already added in cart
