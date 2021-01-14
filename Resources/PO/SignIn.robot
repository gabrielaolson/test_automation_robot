*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Verify Page Loaded
  Sleep  3s
  Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
  Element Text Should Be  ${SIGNIN_MAIN_HEADING}  Sign-In
#  Wait Until Page Contains  Sign-In


Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Click "Continue" Button
    Fill "Password" Field  ${Password}
    Click "Sign In" Button

Fill "Email" Field
  [Arguments]  ${Username}
  Log  Filling Email field with ${Username}

Click "Continue" Button
  Log  Clicking Submit Button

Fill "Password" Field
  [Arguments]  ${Password}
  Log  Filling Password field with ${Password}

Click "Sign In" Button
  Log  Clicking Submit Button

