*** Settings ***
Library             SeleniumLibrary

*** Variables ***

${OPTIONS}          
...    add_argument("--incognito");
...    add_argument("--disable-dev-shm-usage");
...    add_argument("--disable-gpu");
# ...    add_argument("--headless");

*** Test Cases ***
Open Browser and Run
    Open Browser                     browser=chrome        url=https://google.com        options=${OPTIONS}
    Title Should Be                  Google
    # Click Element                  name:q
    Input Text                       name:q        Robot Framework
    Wait Until Element Is Visible    btnK 
    Click Element                    btnK 
