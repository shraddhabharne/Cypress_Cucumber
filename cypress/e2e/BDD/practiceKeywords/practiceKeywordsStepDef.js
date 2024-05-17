import { Given,When,Then,And } from "@badeball/cypress-cucumber-preprocessor";
Given('The water qty required for 1cup of coffee is 100ml:',function(){
    cy.log('The water qty required for 1cup of coffee is 100ml:')
})
Given('The vending machine is working', function(){
    cy.log('The vending machine is working')
    
})

    
When('I press for CoffeeType {string}',function(coffeeType){
    cy.log('I press for Coffee Type'+coffeeType)
})    
Then ('vending machine has below water quantity:',function(dataTable){
    cy.log('vending machine has below water quantity:')
    cy.log('vending machine Water(ml):'+dataTable.rawTable[1][0])
    cy.log('vending machine cups:'+ dataTable.rawTable[1][1])
})    

Then ('message shown is {string}',function(message){
    cy.log('message shown is'+ message)
})    

Then ('I get {string} Cups of coffee',function(cups){
    cy.log('Cups of coffee brewed: '+ cups)
}) 



Given('The vending machine has additional options:',function(){
    cy.log('The vending machine has additional options')
})
Given('can generate boiling water',function(){
    cy.log('and can generate boiling water')
})
Given('can generate chocolate milk',function(){
    cy.log('and can generate chocolate milk')
})
When('I press for CoffeeType chocolate',function(){
    cy.log('I press for CoffeeType chocolate')
}) 
Then('I get 1 cup hot chocolate',function (){
    cy.log('I get 1 cup hot chocolate')
})
Then ('I dont get to select number of cups',function(){
    cy.log('I dont get to select number of cups')
})
Given('The vending machine has Doc String options:',function(){
    cy.log('Doc Strings')
})


    
When('I press for {string}', function(coffee){
    cy.log('I press for: ' + coffee)
})
When('I press for {int}', function(cups){
    cy.log('I press for: '+ cups)
})
Then('I see a  message shown is {string}', function(message){
    cy.log('I see a  message shown is: '+ message )
}) 