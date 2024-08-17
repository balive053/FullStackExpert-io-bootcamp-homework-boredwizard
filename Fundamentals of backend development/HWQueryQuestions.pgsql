-- 1) List all restaurants in the chain
SELECT 
    restaurantname 
FROM restaurants;

-- 2) Show all menu items with their prices
SELECT 
      itemname
    , itemprice
FROM menuitems;

-- 3) Display all employees and their positions
SELECT 
      CONCAT(firstname, ' ', lastname)
    , position
FROM employees;

-- 4) List All Orders with Customer Names and Their Ordered Items
SELECT 
    o.ID_Order,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    mi.ItemName AS MenuItemName,
    oi.Quantity,
    oi.TotalAmount
FROM 
    Orders o
JOIN 
    Customers c ON o.FK_ID_Customer = c.ID_Customer
JOIN 
    OrderItems oi ON o.ID_Order = oi.FK_ID_Order
JOIN 
    MenuItems mi ON oi.FK_ID_MenuItem = mi.ID_MenuItem
ORDER BY 
    o.ID_Order;

-- Find Customers Who Have Never Placed an Order    
SELECT 
    c.ID_Customer,
    c.FirstName,
    c.LastName
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.ID_Customer = o.FK_ID_Customer
WHERE 
    o.ID_Order ISNULL;

-- Identify Restaurants that Have Sales Above the Average Sales of All Restaurants
WITH RestaurantSales AS (
    SELECT 
        r.ID_Restaurant,
        r.RestaurantName,
        SUM(oi.TotalAmount) AS TotalSales
    FROM 
        Restaurants r
    JOIN 
        Orders o ON r.ID_Restaurant = o.FK_ID_Restaurant
    JOIN 
        OrderItems oi ON o.ID_Order = oi.FK_ID_Order
    GROUP BY 
        r.ID_Restaurant
),
AverageSales AS (
    SELECT
        AVG(TotalSales) AS AvgSales
    FROM 
        RestaurantSales
)
SELECT 
    rs.ID_Restaurant,
    rs.RestaurantName,
    rs.TotalSales
FROM 
    RestaurantSales rs,
    AverageSales av
WHERE 
    rs.TotalSales > av.AvgSales;