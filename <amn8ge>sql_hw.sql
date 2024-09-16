--- World Database

SELECT Name from country where Continent="South America";

SELECT Population from country where Name="Germany";

SELECT Name from city where CountryCode="JPN";

SELECT Name from country where Continent="Africa" ORDER by Population DESC LIMIT 3;

SELECT Name, LifeExpectancy from country where Population >= 1000000 and Population <= 5000000 ORDER by LifeExpectancy DESC;

SELECT Name from country
JOIN countrylanguage ON country.code = countrylanguage.CountryCode
WHERE countrylanguage.Language = "French" AND countrylanguage.IsOfficial;

--- Chinook Database

SELECT Title from Album where ArtistId=1;

SELECT FirstName, LastName, Email from Customer where Country="Brazil";

SELECT * FROM `Playlist`

SELECT count(*) as "Number of Rock Tracks" from Track where GenreId=1;

SELECT FirstName, LastName from Employee where ReportsTo=2;

SELECT Customer.FirstName, Customer.LastName, SUM(Invoice.Total) AS TotalSales FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName
ORDER BY TotalSales DESC;

--- Database Construction

CREATE TABLE Customer (
    CustomerID INT(255),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Shoes (
    SKU INT(8),
    Brand VARCHAR(50),
    ModelName VARCHAR(50),
    Color VARCHAR(50),
    PRIMARY KEY (SKU)
);

CREATE TABLE Nutrition (
    SKU INT(8),
    Brand VARCHAR(50),
    Name VARCHAR(50),
    Flavor VARCHAR(50),
    PRIMARY KEY (SKU)
);

INSERT INTO Customer (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Lily', 'Rademacher', 'lily.rad@example.com'),
(2, 'John', 'Doe', 'john.doe@example.com'),
(3, 'Alice', 'Johnson', 'alice.joh@example.com'),
(4, 'Bob', 'Brown', 'bob.bro@example.com'),
(5, 'Charlie', 'Davis', 'charlie.dav@example.com');

INSERT INTO Shoes (SKU, Brand, ModelName, Color) VALUES
(10000001, 'New Balance', 'Fresh Foam 1080', 'Blue'),
(10000002, 'Hoka', 'Clifton 8', 'Black'),
(10000003, 'Saucony', 'Endorphin Speed', 'White'),
(10000004, 'Asics', 'Gel-Kayano 28', 'Red'),
(10000005, 'Brooks', 'Ghost 16', 'Navy');

INSERT INTO Nutrition (SKU, Brand, Name, Flavor) VALUES
(10000001, 'Gu', 'Energy Gel', 'Chocolate'),
(10000002, 'Clif Bar', 'Energy Bar', 'Crunchy Peanut Butter'),
(10000003, 'PowerBar', 'Protein Plus Bar', 'Cookies and Cream'),
(10000004, 'Gatorade', 'Thirst Quencher', 'Lemon-Lime'),
(10000005, 'Hammer Nutrition', 'Endurolytes', 'Citrus');

SELECT FirstName, LastName FROM Customer;

SELECT Brand, ModelName FROM Shoes WHERE Brand = 'New Balance';

SELECT Brand, Name FROM Nutrition WHERE Flavor = 'Chocolate';

