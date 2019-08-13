*** Settings ***

Documentation  This is main page of SUT

Resource  ../libs.robot

*** Variables ***

${main_page.verify_text}  {{cookiecutter.verify_text}}

*** Keywords ***

Verify Page Loaded
    [Documentation]  Verify page contains text
    Wait Until Page Contains  ${main_page.verify_text}

