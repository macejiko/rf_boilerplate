#!/usr/bin/env python
import os
from lxml import html
from urllib.request import urlopen

PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)
main_page_file = PROJECT_DIRECTORY + "/pages/main_page.robot"

url = '{{ cookiecutter.env_url }}'
page = html.fromstring(urlopen(url).read().decode('utf-8'))

# Try to get some text from links > 5 symbols. Or from p tag instead
try:
  for i in range(10):
    verify_text = page.xpath("//a")[i].text.strip()
    if len(verify_text) >= 5 : break
except:
  for i in range(10):
    verify_text = page.xpath("//p")[i].text.strip()
    if len(verify_text) >= 5 : break

# We need all this workaround with changing value in file cause there is no current solution via cookiecutter
# More info here: https://github.com/cookiecutter/cookiecutter/issues/851
# PR that should fix this: https://github.com/cookiecutter/cookiecutter/pull/1022

with open(main_page_file, 'r') as file :
  filedata = file.read()

filedata = filedata.replace('cookiecutter_github_issue_851', verify_text)

with open(main_page_file, 'w') as file:
  file.write(filedata)

print("-------------------------------------------------------\n")
print("Verification text is: " + verify_text)
print("\n-------------------------------------------------------")

