*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test

Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER}  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  ferrari 458
${LOGIN_EMAIL}=  gabriela.olson@icloud.com
${LOGIN_PASSWORD} =  MYPASS

*** Test Cases ***

Should be able to login
  AmazonApp.Login   ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user should be able to search for products
  [Tags]  Current
  AmazonApp.Search for Products

Logged out user should be able to view a product
  [Tags]  Smoke
  AmazonApp.Search for Products
  AmazonApp.Select Product from Search Results

User should be able to search for products
  [Documentation]  This is some basic info about the test
  [Tags]  Smoke
  AmazonApp.Search for Products


User should be able to sign in to check out
  [Documentation]  This is some basic info about the test
  [Tags]  Smoke

  AmazonApp.Search for Products
  AmazonApp.Select Product from Search Results
  AmazonApp.Add Product to Cart
  AmazonApp.Begin Checkout

*** Keywords ***
