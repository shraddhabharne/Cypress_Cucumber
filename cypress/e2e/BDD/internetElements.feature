Feature: Internet elements testing from Herokuapp
Login cases for the login page on Herokuapp

Scenario: Login with no credentials entered
Given I navigate to Login page
When I click on Login button
Then Error message is shown on top
And I am on the login page
@smoke
Scenario: Login with valid credentials 
Given I navigate to Login page
When I enter valid, username and password
|username|password|
|tomsmith|SuperSecretPassword!|
And I click on Login button
Then Secure Area is displayed on title
And I am logged into secure page

Scenario: Login with invalid credentials
Given I navigate to Login page
When I enter valid username and incorrect password
And I click on Login button
Then password invalid message is shown in red
And user is on the login page

Scenario Outline: <Description>: Practice Scenario outline
Given I navigate to Login page
When I enter valid <username> and <password>
And I click on Login button 
Then The message shown is <message>

Examples:
   | Description | username | password | message |
    | "Valid user" | "tomsmith"  | "SuperSecretPassword!"  |  "You logged into a secure area!"  |
    | "Invalid user" | "tomsmith"  | "SuperSecretPassword"  |   "Your password is invalid!"  |
    | "Blank credentials" | " "  |  " " |    "Your username is invalid!"  |


