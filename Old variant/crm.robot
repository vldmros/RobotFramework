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
${BROWERS} =    chrome
${URL} =    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =    admin@robotframework.com  
${VALID_LOGIN_PASSWORD} =    Qwe123


***Test Cases***
Should be able to add new customer
    [Documentation]     This is a basic info about test
    [Tags]                  1006    Smoke    Contacts
    CrmApp.Go to "HomePage" 
    #Login
    Click Link                   id=SignIn    #css=#SignIn - copy Selector    #xpath=//*[@id="SignIn"] - Copy xpath      #login.html    
    Page Should Contain          Login

    Input Text                   id=email-id    ${VALID_LOGIN_EMAIL}
    Input Text                   id=password    ${VALID_LOGIN_PASSWORD}
    Click Button                 id=submit-id    

    #Add customer
    Click Element                id=new-customer
    Page Should Contain          Add Customer

    Input Text                   id=EmailAddress    janedo@user.com
    Input Text                   id=FirstName       Jane
    Input Text                   id=LastName        Doe
    Input Text                   id=City            Dallas
    Select From List By Value    id=StateOrRegion        TX
    Select Radio Button          gender    female
    Select Checkbox              promos-yes
    Click Button                 xpath=//*[@id="loginform"]/div/div/div/div/form/button
    Wait Until Page Contains     Success! New customer added.  
   

    Sleep                        3s
    #Log OUT
    Click Link                   Sign Out 
    Wait Until Page Contains     Signed Out 

*** Keywords ***
