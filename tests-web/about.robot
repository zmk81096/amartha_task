*** Settings ***
Resource    ../resources/pages/LoginKeyword.robot
Resource    ../resources/pages/AboutKeyword.robot
Resource    ../resources/keywords/Commons.robot
Test Teardown    Close Current Browser


*** Test Cases ***
User wants to see About Page
  Open Login page
  Input Username and Password
  Login success
  Click Menu Choose About
  Success see About page
