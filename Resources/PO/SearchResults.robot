*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Verify Search Completed
  Sleep  3s
  Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
  [Documentation]  Clicks on the first product in the search results list
  Sleep  3s
  #xpath criar no inspect - apos clicar em console/validar $x('//*[@]')
  Click Link  xpath=//*[@data-component-type="s-search-result" and @data-index="0"]//h2/a


