*** Settings ***
Library     SeleniumLibrary
Resource    ../../config/environments.robot
Resource    ../locators/LoginPage.robot
Resource    ../locators/ProductPage.robot

*** Keywords ***
Open Login page
  Open Browser                        ${BASE_URL}            ${BROWSER}

Input Username and Password
  Wait Until Page Contains Element    ${USERNAME_FIELD}
  Input Text                          ${USERNAME_FIELD}      standard_user
  Input Password                      ${PASSWORD_FIELD}      secret_sauce

Login success
  Click Element                       ${LOGIN_BUTTON}
  Wait Until Page Contains Element    ${PRODUCT_TITLE}
