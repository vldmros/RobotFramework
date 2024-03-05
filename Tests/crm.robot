*** Settings ***
Documentation        This is some basic info about the whole suite        //some information about the system under test and why you're testing it
Library              SeleniumLibrary    
Resource             ../Resources/Common.robot  
Resource             ../Resources/CrmApp.robot 

Test Setup           Begin Web Test
Test Teardown        End Web Test
# Run the script:
#robot Crm.robot

***Variables***
${BROWSER} =                  chrome
${URL} =                      https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =        admin@robotframework.com  
${VALID_LOGIN_PASSWORD} =     Qwe123


***Test Cases***
Home page should load
    [Documentation]     Test the Home Page
    [Tags]                  1001    Smoke    Home
    CrmApp.Go to "HomePage" 

Login should succeed with valid credentials
    [Documentation]     Test the login
    [Tags]                  1002    Smoke    Login
    CrmApp.Go to "HomePage" 
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}   

Should be able to log out
    [Documentation]     Test the log out
    [Tags]                  1004    Smoke    Log Out
    CrmApp.Go to "HomePage" 
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]     This is a basic info about test
    [Tags]                  1006    Smoke    Contacts
    CrmApp.Go to "HomePage" 
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out
           
