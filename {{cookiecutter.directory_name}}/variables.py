# encoding: utf-8

import os

HOME_URL = os.getenv('ENV_URL')

SELENIUM_GRID_HUB = os.getenv('SELENIUM_GRID_HUB')
SELENIUM_GRID_HUB_URL = 'http://{}:4444/wd/hub'.format(SELENIUM_GRID_HUB)

BROWSER = 'chrome'

RESOLUTION_WIDTH = 1920
RESOLUTION_HIGHT = 1080


