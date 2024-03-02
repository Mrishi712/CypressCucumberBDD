import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then('Enter the firstName {string}',(input)=>{
    cy.get('#firstname').type(input)
})

Then('Enter the lastName {string}',(input)=>{
    cy.get('#lastname').type(input)
})

Then('Enter the email {string}',(input)=>{
    cy.get('#email_address').type(input)
})

Then('Enter the password {string}',(input)=>{
    cy.get('#password').type(input)
})

Then('Enter the confirmPassword {string}',(input)=>{
    cy.get('#password-confirmation').type(input)
})

Then('Click on Submit',()=>{
    cy.get('#form-validate').click()
})


