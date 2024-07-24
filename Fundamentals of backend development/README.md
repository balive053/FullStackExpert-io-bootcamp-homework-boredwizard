# Week 3 homework
After this week you should have a good feel for how databases are used, what the different types of databases are, and how to think about modeling data. This weeks homework will be to design the database for a restaurant chain.

Requirements:
1. Database Design:
- Create tables for: Restaurants, Employees, Menu Items, Customers, Orders, and Order Items
- Define appropriate primary keys, foreign keys, and relationships
2. Data Population:
- Insert sample data into each table (at least 10-20 rows per table)
3. SQL Queries:
Write SQL queries to accomplish the following tasks:
- List all restaurants in the chain
- Show all menu items with their prices
- Display all employees and their positions
- List all orders with customer names and their ordered items
-Find customers who have never placed an order
-Identify restaurants that have sales above the average sales of all restaurants
4. Make sure that if the script to create the tables is run more than once, it still works (Drop table, IF exists etc.)


## Running the database
You can start the database by running 
`docker compose up` (Make sure docker is running).

## Connecting to the database
Install the vscode postgres extension in the marketplace by searching for this extension ID : `ckolkman.vscode-postgres`

Once this extension is installed, you should see a new icon on the left panel of your IDE. It should have an elephant face (Postgres Logo). 
1. Click on the logo to open the data explorer
2. In the top right of this new pane, there should be a + sign, click this to add a new connection
3. When prompted for the host, enter `localhost`
4. When prompted for the username, enter `admin`
5. When prompted for the password, enter `password`
6. When prompted to use SSL or standard connection, select standard connection
7. When prompted to enter the database, enter `restaurant`

After following the above steps you should now be able to see a new connection locally with a restaurant database.

Opening the SQL files you should be able to see some basic SQL queries. Open query1.pgsql and then click the restaurant database in your explorer. Highlight the query and right click (run query). This should create a table in your database. (You can drop this later)

These queries are just to illustrate how to interact with the database locally, you will create individual pgsql files for each of the requested queries above.
