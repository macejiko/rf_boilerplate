# Robot Framework Boilerplate

> Template for RF test runner for fast installation and usage for new project

Robot Framework User Guide is available [here](http://robotframework.org/robotframework/2.8.6/RobotFrameworkUserGuide.html)

## Prerequirements

- python 2.7
- chromedriver available in $PATH from [here](http://chromedriver.chromium.org/)

## How to use for new project

1. Install
2. Change code in `pages/main_page.robot` file according to your project
3. In `variables.py` file change `HOME_URL` to your project URL
4. Run existing example test via `pybot -d report -b debug.robot test_cases/`
5. View Report in `report/` dir
6. Create more pages and more test_cases
7. Enjoy

## Install

1. `virtualenv .venv && source .venv/bin/activate`
2. `pip install -r requirements.robot`

## Run Tests
`pybot -d report -b debug.robot test_cases/`

## Debug and Reports 

After test execution `report/` dir will be created with HTML reports. For another types of reports (e.g. JUNIT) you should provide appropriate options to `pybot`

- HTML and all another reports will be saved to `report/` dir
- Debug info will be in file `report/debug.robot`

## Files structure

* keywords/ - dir with additional keywords (e.g. ssh or mysql)
* pages/ - dir with all web pages using Page Object pattern
* report/ - dir with all reports (will be generated after first run of `pybot`)
* test_cases/ - dir with all test cases
* config.robot - file that unite all pages, variables, keywords of project. Used then in each test case
* libs.robot - file with all libraries that we use in project
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
- Write some bootstrap command that will generate files structure
- Record video how to run
- Move to Python 3


