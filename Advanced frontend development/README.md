# Week 6 homework
This week we should have a good understanding of NextJS and how data fetching works. Start by copying over week 5 Homework's solution. We won't be changing this so it can remain as is. Next you will be building an admin application for managing the restaurant chain using NextJS and using our service that we created in Week 5 to serve the data. To get started, `cd` to this directory and create a new NextJS application by running 
`npx create-next-app@latest` and following the prompts. We will use typescript, app router, and tailwind css for this assignment.

Requirements:
1. Build a signup page to create a new user
2. Hash credentials and store in the database
3. Create a login page to login with created credentials
4. Create a listview page with a table of all the restaurants
5. Make each restaurant name clickable, taking you to a restaurant detail page
6. On the restaurant detail page, allow users to see the 10 most recent orders, the total number of orders, the Menu items, and all of the employees.
7. Make the menu editable, we should be able to add items, remove items, and modify items
8. Create a logout functionality
9. Make all pages secure so that you cannot access them without being logged in.
10. Data retrieval and modifications should use server components and server actions making calls to our existing service either via REST or GraphQL
