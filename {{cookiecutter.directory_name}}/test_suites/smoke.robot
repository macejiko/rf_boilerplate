*** Settings ***


Documentation  This is smoke test suite
Resource  ../config.robot

Test Setup  Preconditions
Test Teardown  Close Browser


*** Keywords ***


Preconditions
    Open Browser on Page  ${HOME_URL}  ${BROWSER}


*** Test Cases ***


User Able To Access Site
    [Documentation]  This just checks that main page loaded
    main_page.Verify Page Loaded


