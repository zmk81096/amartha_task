*** Settings ***
Resource    ../resources/pages/login_keyword.robot
Resource    ../resources/pages/about_keyword.robot
Resource    ../resources/keywords/commons.robot
Test Teardown    Close Current Browser


*** Test Cases ***
User wants to see About Page
  Open Login page
  Input Username and Password
  Login success
  Click Menu Choose About
  Success see About page
