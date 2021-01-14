*** Settings ***
Library        SeleniumLibrary


*** Keywords ***
Verify Page Loaded
  Sleep  4s
  Wait Until Page Contains  Customer Service

Add to Cart
  Sleep  4s
  Click Button  id=add-to-cart-button
  Wait Until Page Contains  Added to Cart
