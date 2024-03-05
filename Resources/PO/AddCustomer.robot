*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =          Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =         xpath=//*[@id="loginform"]/div/div/div/div/form/button
${ADDCUSTOMER_EMAIL_TEXTBOX} =         id=EmailAddress 
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =    id=FirstName
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =     id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =          id=City 
${ADDCUSTOMER_STATE_DROBDOWN} =        id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =          gender 
${ADDCUSTOMER_PROMO_CHECKBOX} =        promos-yes 
*** Keywords ***

Verify Page Loaded
    Wait Until Page Contains     ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Fields
    Click Submit Button

Fill Customer Fields
    Input Text                   ${ADDCUSTOMER_EMAIL_TEXTBOX}         janedo@user.com
    Input Text                   ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}    Jane
    Input Text                   ${ADDCUSTOMER_LAST_NAME_TEXTBOX}     Doe
    Input Text                   ${ADDCUSTOMER_CITY_TEXTBOX}          Dallas
    Select From List By Value    ${ADDCUSTOMER_STATE_DROBDOWN}        TX
    Select Radio Button          ${ADDCUSTOMER_GENDER_RADIO}          female
    Select Checkbox              ${ADDCUSTOMER_PROMO_CHECKBOX}                    
 
Click Submit Button
    Click Button                ${ADDCUSTOMER_SUBMIT_BUTTON}  