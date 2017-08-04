Feature: BBC Login
As a BBC customer
I want to be able to sign up and login 

    Scenario: I am able to sign up as a customer
        Given I access the homepage
        And I want a new account
        And I navigate to the sign up page
        When I fill in all available fields
        And click sign up
        Then I have a new account
    
    Scenario: I am not able to sign up when the required fields are not complete
        Given I access the homepage
        And I want a new account
        And I navigate to the sign up page
        When I leave a required field blank
        And click sign up
        Then I should see a blank error message
        And the account is not created