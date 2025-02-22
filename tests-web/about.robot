*** Settings ***
Resource    ../resources/keyword/LoginKeyword.robot
Resource    ../resources/keyword/AboutKeyword.robot


*** Test Cases ***
User wants to see About Page
  Open Login page
  Input Username and Password
  Login success
  Click Menu Choose About
  Success see About page
