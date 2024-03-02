@Regression @Menus
Feature: Automation of Whats New section

Scenario Outline: Validate that user able to move to whats new section from Login Page
    Given Magneto Website is loaded
    Then Validate the web page Title '<homePageTitle>'
    When User clicks on the button '<menuName>'
    Then Validate the web page Title '<signInPageTitle>'

    Examples:
    |homePageTitle|menuName   |signInPageTitle|
    |Home Page    |Women      |Women          |
    |Home Page    |Men        |Men            |
    |Home Page    |Gear       |Gear           |
    |Home Page    |Training   |Training       |
    |Home Page    |Sale       |Sale           |