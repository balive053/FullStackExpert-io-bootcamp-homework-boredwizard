

CREATE TABLE IF NOT EXISTS Restaurants (
      ID_Restaurant SERIAL PRIMARY KEY
    , RestaurantName VARCHAR(100) NOT NULL
    , Shortname VARCHAR(40)
    , Country VARCHAR(50) NOT NULL
    , State VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
      ID_Employee SERIAL PRIMARY KEY
    , FirstName VARCHAR(50) NOT NULL
    , LastName VARCHAR(50) NOT NULL
    , FK_BranchID SMALLINT NOT NULL REFERENCES Restaurants (ID_Restaurant)
    , Position VARCHAR(50) NOT NULL
    , IsBranchManager BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS Customers (
      ID_Customer SERIAL PRIMARY KEY
    , FirstName VARCHAR(50) NOT NULL
    , LastName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
      ID_Order BIGSERIAL PRIMARY KEY
    , FK_ID_Customer INT NOT NULL REFERENCES Customers (ID_Customer)
    , FK_ID_Restaurant INT NOT NULL REFERENCES Restaurants (ID_Restaurant)
    , OrderDate DATE NOT NULL
    , OrderTime TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS MenuItems (
      ID_MenuItem SERIAL PRIMARY KEY
    , ItemName VARCHAR(50) NOT NULL
    , ItemPrice NUMERIC(10,2) NOT NULL
    , FK_ID_Restaurant INT NOT NULL REFERENCES Restaurants (ID_Restaurant)
);

CREATE TABLE IF NOT EXISTS OrderItems (
      OrderItemID SERIAL PRIMARY KEY
    , FK_ID_Order INT NOT NULL REFERENCES Orders (ID_Order)
    , FK_ID_MenuItem INT NOT NULL REFERENCES MenuItems (ID_MenuItem)
    , Quantity INT NOT NULL
    , Status VARCHAR(50) NOT NULL
    , TotalAmount NUMERIC(10, 2) NOT NULL
);

