*** Settings ***
Documentation   A file with reusable keywords and variables for the Home page.
Variables       ../variables/config.py
Library         SeleniumLibrary

***Variables***
${TIMEOUT}    60


*** Keywords ***
Open Browser To Home Page
    Open Browser    http://localhost:8080  browser=chrome  remote_url=http://chrome:4444


A Home Page Is Open
    Wait Until Page Contains    Time now is
    ...                         ${TIMEOUT}
    ...                         The Home Page didn't load within ${TIMEOUT} snds.