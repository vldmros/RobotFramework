*** Settings ***
Library        SeleniumLibrary
Resource     ../Resources/PO/HomePage.robot
Resource     ../Resources/PO/SignIn.robot
Resource     ../Resources/PO/TopNav.robot
Resource     ../Resources/PO/AddCustomer.robot
Resource     ../Resources/PO/Customers.robot
Resource     ../Resources/PO/LoggedOut.robot


*** Variables ***
   
*** Keywords ***
Go to "HomePage" 
    HomePage.Navigate to
    HomePage.Verify Page Loaded

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    TOPNAV.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentians    ${Email}    ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded
    