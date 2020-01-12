*** Settings ***


Documentation  This file loads all libs of project in one place.
...            All pages and keywords files load this file

Library  SeleniumLibrary  7  6  Take Screenshot
Library  String
Library  DateTime
Library  Collections


*** Keywords ***


Take Screenshot
  Capture Page Screenshot  ${TEST NAME}.png


