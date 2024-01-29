*** Settings ***
Documentation    Example test Robotframework SE Class
Library  SeleniumLibrary
Suite Setup  Open Browser  https://automationexercise.com/
Suite Teardown  Close Browser

*** Variables ***
${EMAIL}   woramet183@gmail.com


*** Keywords ***

Click NavbarButton
   Click Link  //*[@id="header"]/div/div/div/div[2]/div/ul/li[3]/a

Input EMAIL
  [Arguments]  ${EMAIL}
  Input Text  //*[@id="susbscribe_email"]  ${EMAIL}

Click subscribedButton
   Click Button   //*[@id="subscribe"]  




*** Test Cases ***
Login with Standard User
  [Documentation]  This testcase i expected to show "You have been successfully subscribed!"
  Click NavbarButton
  Input EMAIL   ${EMAIL}
  Click subscribedButton
  Page Should Contain  You have been successfully subscribed!
  