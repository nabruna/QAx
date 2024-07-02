*** Settings ***
Documentation        An example of Robot Framework usage and structure.

Library              lib.py

*** Test Cases ***
Show welcome message
    Log To Console    Hello Robot Framework

    My Log            Hello from Python lib
