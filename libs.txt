*** Settings ***

Documentation  This file loads all libs of project in one place.
...            All pages and keywords files load this file

Library  Selenium2Library  20  20  Take Screenshot
Library  String
Library  DateTime
Library  Collections

*** Keywords ***

Take Screenshot
  Capture Page Screenshot  ${TEST NAME}.png

