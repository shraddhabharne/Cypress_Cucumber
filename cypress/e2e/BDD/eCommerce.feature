Feature: End to End testing
   Feature Description
@Regression
Scenario: Ecommerce products delivery
Given I open Ecommerce page
When I add items to the cart
And validate the total prices
Then then select country submit and verify Thank you 
@Smoke
Scenario: Filling the form to shop
Given I open Ecommerce page
When I fill the form details
Then validate the forms behaviour
And select the Shop Page

@Smoke
Scenario: Filling the form to shop using Cucumber data
Given I open Ecommerce page
When I fill the form details using Cucumber data 
|name| gender|
| Shraddha | Female |
Then validate the forms behaviour using Cucumber data
And select the Shop Page using Cucumber data