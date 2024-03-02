import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor"

const url = 'https://magento.softwaretestingboard.com'

Given('Magneto Website is loaded', () => {
    cy.visit(url)
})

Then('Validate the web page Title {string}', (titleName) => {
    cy.title().should('eq', titleName);
})

When('User clicks on the button {string}', (menuName) => {
    cy.get('a').find('span').contains(menuName).click()
})

When('User clicks on the create a account', () => {
    cy.get('a').contains('Create an Account').click()
})