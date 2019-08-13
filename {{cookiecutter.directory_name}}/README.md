# Robot Framework Tests

Robot Framework User Guide is available [here](http://robotframework.org/robotframework/2.8.6/RobotFrameworkUserGuide.html)

## Prerequirements

- docker-compose

## Run Tests

`docker-compose up`

## Debug and Reports 

After test execution `report/` dir will be created with HTML reports. For another types of reports (e.g. JUNIT) you should provide appropriate options to `pybot`

- HTML and all another reports will be saved to `report/` dir
- Debug info will be in file `report/debug.robot`

## Files structure
```
├── README.md
├── config.robot             # Unites all pages, variables, keywords. Used in each test suite
├── docker-compose.yml
├── keywords                 # Additional keywords (e.g. ssh or mysql)
│   └── all_keywords.robot
├── libs.robot               # RF libraries (e.g. BuiltIn, Selenium etc.)
├── pages                    # Web pages using Page Object pattern
│   ├── all_pages.robot
│   └── main_page.robot
├── test_suites              # All tests
│   └── smoke.robot
└── variables.py             # Environment or another settings
```

## Page Object

A page object wraps an HTML page with an application-specific API, allowing you to manipulate page elements without digging around in the HTML. Each Page becomes independent object.

In test cases we manipulate with application ONLY via keywords from particular page. When something is changed on the page or some new element appeared we change/add RF keyword or HTML locator for particular page. This helps us to make changes only in one place.

Each page divided on 3 parts via RF language:

- **Locators** - all HTML locators that are presented on the page. Described via id, css or xpath like RF variables;
- **Actions** - all user interactions that could be performed on the page. E.g. clicking on some button or input text to some field. Described via RF keywords;
- **Verifications** - all verifications that we do during tests execution. Such as checking of some text exist on page or button enabled. Described via RF keywords.

## Tags

We use such RF [tags](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tagging-test-cases):

* *bug* - for all bugs reported in bug tracker system. Marked tests are uncritical
* *not_ready* - Marked tests are excluded from execution

## Future Plans

- Migrate to Python3


