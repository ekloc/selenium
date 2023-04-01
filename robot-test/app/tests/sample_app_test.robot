
*** Settings ***
Documentation   Test home page
Resource        ../resources/sample_app.robot
Library         SeleniumLibrary

*** Test Cases ***
User Can Open A Home page   
    [Documentation]    Open homepage
    Open Browser To Home page
    [Documentation]     Homepage opened, test for text on homepage
    A Home Page Is Open
    [Documentation]     Testing competed, about to teardown the testsuite
    [Teardown]      Close Browser

