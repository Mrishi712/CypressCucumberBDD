@Regression @Login
Feature:Automating Home Page of "https://magento.softwaretestingboard.com"

Scenario Outline: Validate whether user able to Sign up from the home Page.
    Given Magneto Website is loaded
    Then Validate the web page Title '<homePageTitle>'
    When User click on the Sign In section
    Then Validate the web page Title '<signInPageTitle>'
    And User enter the username '<username>'
    And User enter the password '<password>'
    And User click on the Sign In Button
    Then Validate validate the message '<message>'
    
    Examples:
        |homePageTitle|signInPageTitle|username             |password    |message                                                                                                    |
        |Home Page    |Customer Login |user12               |test        |Please enter a valid email address (Ex: johndoe@domain.com).                                               |
        |Home Page    |Customer Login |user123@gmal.com     |tester      |The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.|
