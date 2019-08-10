*** Settings ***

Documentation  This is main page of your site
...  CHANGE IT WHEN START YOUR PROJECT FROM SCRATCH

Resource  ../libs.robot

*** Variables ***

${main_page.example_locator}  xpath=//a[@href='/en-us/career/grow-your-career']

*** Keywords ***

Click Example Locator on Main Page
    Click Element  ${main_page.example_locator}

################################################################################################################################################

Verify Page Loaded
    [Documentation]  Verify page loaded completely
    Wait Until Page Contains Element  ${main_page.example_locator}

