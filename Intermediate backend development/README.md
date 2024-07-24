# Week 4 homework
After this week, we should have a basic understanding of what a REST service is and how to build one. This week's assignment will be to build a REST service representing database we constructed in Week 3's homework. The requirements for this assignment will be:
1. Construct a restful service using nodejs and expressjs to expose the restaurant chain data (return hardcoded responses for now)
2. Create resource oriented endpoints to serve up entities like Restaurant, Customer, Order items etc. (include all entities from database)
3. Handle error scenarios, if an improper input is given, it should return `400 bad request`, if the resource doesn't exist, we should get a 404 etc. (proper error codes for error scenarios)
4. Validate all input, if we expect a string, it should be sanitized and validated. If we expect an email it should be an email etc.
5. Add logging to all endpoints for troubleshooting issues.

Create a new express project within this directory called "restuarant-api" by running 
`npx express-generator` and following the prompts. Follow the instructions on this page to get the app started
https://expressjs.com/en/starter/generator.html
