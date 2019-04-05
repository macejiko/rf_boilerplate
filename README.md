# Robot Framework Test Runner

> Template for RF test runner for fast installation and usage for new project

User Guide is available [here](http://robotframework.org/robotframework/2.8.6/RobotFrameworkUserGuide.html)

## How to use for new project

- Do Install
- Change pages/main_page.txt file for your project 
- In variables.py file change `HOME_URL` for your project
- Run Tests via `pybot` for example.txt test case
- View Report in `report/` dir
- Create more pages and more test_cases
- Enjoy

## Install

1. virtualenv .venv && source .venv/bin/activate
2. pip install -r requirements.txt

## Run Tests

pybot -d report -b debug.txt test_cases/

## Debug and Reports 

- HTML and all another reports will be saved to `report/` dir
- Debug info will be in file `report/debug.txt`

## Files structure

* keywords/ - dir with additional keywords (e.g. ssh or mysql)
* pages/ - dir with all web pages using Page Object pattern
* report/ - dir with all reports (will be generated after first run of `pybot`)
* test_cases/ - dir with all test cases
* config.txt - file that unite all pages, variables, keywords of project. Used then in each test case
* libs.txt - file with all libraries that we use in project
* variables.py - file with all environment settings

## Page Object

A page object wraps an HTML page with an application-specific API, allowing you to manipulate page elements without digging around in the HTML. Each Page becomes independent object.

In test cases we manipulate with application ONLY via keywords from particular page. When something is changed on the page or some new element appeared we change/add RF keyword or HTML locator for particular page. This helps us to make changes only in one place.

Each page divided on 3 parts via RF language:

- **Locators** - all HTML locators that are presented on the page. Described via id, css or xpath like RF variables;
- **Actions** - all user interactions that could be performed on the page. E.g. clicking on some button or input text to some field. Described via RF keywords;
- **Verifications** - all verifications that we do during tests execution. Such as checking of some text exist on page or button enabled. Described via RF keywords.

## Future Plans

- Dockerize runner and use dockerized selenium grid
- Write some boilerplate command that will generate files sctructure
- Record video how to run


