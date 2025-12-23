Feature: Login
  As a user
  I want to log in
  So that I can manage my tasks

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I fill email with a valid user
    And I fill password with a valid password
    And I click on "Login"
    Then I should see the tasks page

  Scenario: Login fails with wrong password
    Given I am on the login page
    When I fill email with a valid user
    And I fill password with an invalid password
    And I click on "Login"
    Then I should see an error message "Invalid credentials"
