*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =       Customers Are Priority One!

*** Keywords ***
Navigate to 
    Go To                    ${URL}
Verify Page Loaded
    Page Should Contain      ${HOME_HEADER_LABEL} 
    