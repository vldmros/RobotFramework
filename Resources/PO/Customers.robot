*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${CUSTOMER_HEADER_LABEL} =               Our Happy Customer
${CUSTOMERS_ADD_CUSTOMER_LINK} =         id=new-customer
${CUSTOMERS_CUSTOMER_SECCESS_LABEL} =    Success! New customer added.
*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains     ${CUSTOMER_HEADER_LABEL}

Click Add Customer Link
    Click Element                ${CUSTOMERS_ADD_CUSTOMER_LINK} 

Verify Customer Added Successfully
    Wait Until Page Contains     ${CUSTOMERS_CUSTOMER_SECCESS_LABEL}