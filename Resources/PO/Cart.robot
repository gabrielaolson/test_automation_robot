*** Settings ***
Library        SeleniumLibrary

*** Keywords ***

Verify Product Added
  Sleep  3s
  Click Element  id=nav-cart-text-container

Proceed to Checkout
  Click Button  Proceed to checkout