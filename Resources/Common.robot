*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    # Set Selenium Speed           0.2s
    Set Selenium Timeout         10s 
    Open Browser                 about:blank      ${BROWSER}

    Set Window Position          x=41    y=169
    Set Window Size              1880    1080

End Web Test
    Close All Browsers