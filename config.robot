*** Settings ***

Documentation  This file loads all pages and declares all vars related to environment
...            All test cases loads only this file

Resource  pages/all_pages.robot
Resource  keywords/all_keywords.robot

Variables  variables.py


