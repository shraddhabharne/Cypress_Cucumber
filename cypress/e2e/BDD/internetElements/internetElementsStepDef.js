import { Given,When,Then,And } from "@badeball/cypress-cucumber-preprocessor";
Given('I navigate to Login page',function(){
    cy.visit('https://the-internet.herokuapp.com/')
    cy.contains('Form Authentication').click()
    cy.url().should('include','login')
})

When('I click on Login button',function(){
    cy.get('button').contains('Login').click()
    
}) 
Then('Error message is shown on top',function(){
    cy.get('#flash-messages').should('be.visible')
    cy.get('#flash').contains('Your username is invalid!')
}) 
Then('I am on the login page',function(){
    cy.url().should('include','login')
})

When('I enter valid, username and password',function(dataTable){
    cy.get('#username').type(dataTable.rawTable[1][0]);
    cy.get('#password').type(dataTable.rawTable[1][1]);
})

Then('Secure Area is displayed on title',function(){
    cy.get('h2').contains('Secure Area')
    cy.get('#flash').contains('You logged into a secure area!')
})

Then('I am logged into secure page',function(){
    cy.url().should('include','secure')
})

When('I enter valid username and incorrect password',function(){
    cy.get('#username').type('tomsmith');
    cy.get('#password').type('SuperSecretPassword');
})

Then('password invalid message is shown in red',function(){
    cy.get('#flash').contains(' Your password is invalid!')
})

Then('user is on the login page',function(){
    cy.url().should('include','login')
})


When('I enter valid {string} and {string}',function(username,password){

    cy.get('#username').type(username);
    cy.get('#password').type(password);
}) 


Then('The message shown is {string}',function(message){
    cy.get('#flash').contains(message)
})
