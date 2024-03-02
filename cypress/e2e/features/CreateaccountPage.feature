@Regression @CreateAccount
Feature: Automation of Creating User

Scenario Outline: Validate that user able to create a new user
    Given Magneto Website is loaded
    Then Validate the web page Title '<homePageTitle>'
    When User clicks on the create a account
    Then Validate the web page Title '<createAccountPageTitle>'
    And Enter the firstName '<firstName>'
    And Enter the lastName '<lastName>'
    And Enter the email '<email>'
    And Enter the password '<password>'
    And Enter the confirmPassword '<password>'
    And Click on Submit

    Examples:
    |homePageTitle|createAccountPageTitle           |firstName|lastName|email  |password|
    |Home Page    |Create New Customer Account      |ABC      |XYZ     |abcd@xy|abc     |
    |Home Page    |Create New Customer Account      |DEF      |XYZ     |abcd@xy|abc     |
    |Home Page    |Create New Customer Account      |XYZ      |XYZ     |abcd@xy|abc     |
    |Home Page    |Create New Customer Account      |GHI      |XYZ     |abcd@xy|abc     |
 