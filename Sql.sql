CREATE TABLE Person(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name string,
  Age integer,
  Height integer,
  City string, 
  FavoriteColor string
  );
  
  INSERT INTO Person(Name, Age, Height, City, FavoriteColor)
  	VALUES
    	('Kerry', 53, 6, 'Haslet', 'green'),
        ('Sebrina', 53, 5, 'Haslet', 'white'),
        ('Nichole', 31, 5, 'Idaho Falls', 'blue'),
        ('Melissa', 26, 5, 'Manchester', 'black'),
        ('Tabitha', 23, 5, 'Rexburg', 'red');
        
SELECT * FROM Person ORDER BY Height DESC;
SELECT * FROM Person ORDER BY Height ASC;
SELECT * FROM Person ORDER BY Age DESC;
SELECT * FROM Person WHERE Age > 20;
SELECT * FROM Person WHERE Age = 18;
SELECT * FROM Person WHERE Age < 20 OR Age > 30;
SELECT * FROM Person WHERE Age != 27;
SELECT * FROM Person WHERE FavoriteColor != 'red';
SELECT * FROM Person WHERE FavoriteColor != 'red' AND != 'blue';
SELECT * FROM Person WHERE FavoriteColor = 'green' OR 'orange';
SELECT * FROM Person WHERE FavoriteColor IN ('orange','green','blue');
SELECT * FROM Person WHERE FavoriteColor IN ('yellow','purple');

CREATE TABLE Orders(
  PersonID integer,
  ProductName string,
  ProductPrice float,
  Quantity integer,
  );
  
  INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
  	VALUES
    	(1, 'pizza', 1.50, 5),
        (2, 'pizza', 2.50, 8),
        (3, 'pizza', 7.50, 13),
        (4, 'pizza', 8.50, 16),
        (5, 'pizza', .50, 1);
        
SELECT * FROM Orders;
SELECT SUM(Quantity) FROM Orders;
SELECT SUM(Quantity*ProductPrice) FROM Orders;
SELECT SUM(Quantity*ProductPrice) FROM Orders WHERE PersonID = 4;

INSERT INTO Artist(Name)
	VALUES
    	('Korn'),
        ('Slipknot');
        
SELECT * FROM Artist ORDER BY Name Desc LIMIT 10;
SELECT * FROM Artist ORDER BY Name Asc LIMIT 5;
SELECT * FROM Artist WHERE Name LIKE 'Black%';
SELECT * FROM Artist WHERE Name Like '%Black%';

SELECT FirstName, LastName FROM Employee WHERE City = 'Calgary';
SELECT FirstName, LastName, Max(BirthDate) From Employee;
SELECT * FROM Employee WHERE ReportsTo = 2;
SELECT COUNT(*) FROM Employee Where City = 'Lethbridge';

SELECT COUNT(*) FROM Invoice WHERE BillingAddress = 'USA';
SELECT Max(Total) FROM Invoice;
SELECT Min(Total) FROM Invoice;
SELECT * FROM Invoice WHERE Total > 5;
SELECT COUNT(*) Invoice WHERE Total < 5;
SELECT Count(*) Invoice WHERE IN ('CA', 'TX', 'AZ');
SELECT Avg(Total) FROM Invoice;
SELECT Sum(Total) FROM Invoice;