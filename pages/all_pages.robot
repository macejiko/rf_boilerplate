*** Settings ***

Documentation  This file represents all available pages
...  Require here all pages that you add to folder
...  Also it contains top level UI keywords

Resource  main_page.robot

*** Keywords ***

Open Browser on Main Page
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}  remote_url=${SELENIUM_GRID_HUB_URL}
    Set Window Size  ${RESOLUTION_WIDTH}  ${RESOLUTION_HIGHT}
    Set Selenium Speed  .2
    Set Selenium Timeout  15

Verify Page Contains Text
    [Documentation]  Searches for text on page
    [Arguments]  @{text}
    :FOR  ${t}  IN  @{text}
    \  Wait Until Page Contains  ${t}  error=There is no '${t}' text on the page!

