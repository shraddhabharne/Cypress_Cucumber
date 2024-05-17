# Cypress_Cucumber
Project is to practice Gherkin keywords. Cypress is used for implementing Stepdefinations.

Installation of Cucumber:
Install the cucumber dependencies: npm install @badeball/cypress-cucumber-preprocessor
Select the Documentation -> Example-> E2E Testing table -> Select Browserify -> Link under CJS as we are writing scripts in JS 
Edit the cypress config.js 
Edit the dependency in  package.json file to include the browserify-preprocessor line
Incase on run of cypress, errors are shown then, run the command:  npm i @cypress/browserify-preprocessor
Install Plugin Cucumber (Gherkin) in VSCode

Cucumber Reports:
Implementation: https://github.com/badeball/cypress-cucumber-preprocessor/blob/master/docs/json-report.md
Run command: node cucumber-html-report.js
Reports: Cypress_Cucumber\cypress\cucumberReports\cucumber-htmlReport.html\index.html

