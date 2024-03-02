import { Then, When } from "@badeball/cypress-cucumber-preprocessor";

When('User click on the Sign In section',()=>{
    cy.get('a').contains('Sign In').click()
})

Then('User enter the username {string}',(username)=>{
    cy.get('#email').type(username)
})

Then('User enter the password {string}',(password)=>{
    cy.get('#pass').type(password) 
})

Then('User click on the Sign In Button',()=>{
    cy.get('#send2').click()
})

Then('Validate validate the message {string}',(message)=>{
    cy.get('*').contains(message).should('exist')
})

