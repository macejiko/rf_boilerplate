# encoding: utf-8

import os

HOME_URL = '%s' % os.environ['ENV_URL']

SELENIUM_GRID_HUB = os.environ['SELENIUM_GRID_HUB']
SELENIUM_GRID_HUB_URL = 'http://%s:4444/wd/hub' % SELENIUM_GRID_HUB

BROWSER = 'chrome'

RESOLUTION_WIDTH = 1920
RESOLUTION_HIGHT = 1080


