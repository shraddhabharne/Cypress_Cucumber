Feature: Vending machine capacity

    This Feature to practice Gherkin keywords more focus on the gherkin rather
    on the step definition in Cypress.

Background: 
    Given The water qty required for 1cup of coffee is 100ml:
    | CoffeeType | Water(ml) | Cups | Vending machine message |
    | Columbian | 10 |  1 | Warning: Add more water |
    | Columbian De-caf | 500 | 6 | Warning: Max 5 cups |
    | Latte | 500 | 2 | Brewing |
    | Machiatto | 100 | 1 | Brewing |

@Regression
Scenario: Vending machine background test  
When I press for CoffeeType "Latte"
Then vending machine has below water quantity:
| Water(ml) | Cups |
| 300 | 3 |
And message shown is "Brewing"

@smoke
Scenario: Tags practice
Given The vending machine is working     
When I press for CoffeeType "Machiatto"
Then I get "1" Cups of coffee
And message shown is "Brewing"

Scenario: Asterix and but
Given The vending machine has additional options:
* can generate boiling water
* can generate chocolate milk
When I press for CoffeeType chocolate
Then I get 1 cup hot chocolate
But I dont get to select number of cups


Scenario: Doc Strings
Given The vending machine has Doc String options:
"""
and can generate boiling water
and can generate chocolate milk
"""
When I press for CoffeeType chocolate
Then I get 1 cup hot chocolate
But I dont get to select number of cups


Scenario Outline: scenario outline 
Given The vending machine is working     
When I press for <Coffee>
And I press for <Cups>
Then I see a  message shown is <Message>
Examples:
| Coffee | Cups | Message |
| "Hot chocolate" | 1 | "Hot chocolate in making" |
| "Water" | 2 | "1 cup out of 2" |


