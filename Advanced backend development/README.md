# Week 5 homework
After this week, we should be much more familiar with the purpose of REST services and understand how to integrate them with a database. We will be building on top of Week 4's homework. Start by copying your Week 4 project into this directory. Additionally we will build on Week 3's work. Copy the `docker-compose` file as well as all of the SQL queries from week 3. Start the database like before, but this time rather than running the schemas directly, we will use data migrations with drizzle to represent our schema. The goal of this weeks assignment is to integrate the REST service with the database

Requirements:
1. Add the configuration for the database in the enviornment variables
2. Use parameterized SQL queries to prevent SQL injection https://node-postgres.com/features/queries
3. Create an endpoint that creates a customer, an order, and the order item records using a transaction. https://node-postgres.com/features/transactions
4. Create an endpoint within the Orders resource that accepts a customer ID and returns all of the OrderItems that that user purchased, consider what the best way to structure this endpoint will be.
5. All updates should be idempotent
6. Update the endpoint to get all Orders to be paginated
7. Use a data access layer for each resource
8. Create GraphQL resolvers that leverages the same data access layers.
9. Use a feature flag to toggle a particular feature on and off (your choice)
10. Use Drizzle migration files to structure your database.

