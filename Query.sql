USE RentalSystem;

SELECT GameName 
FROM Game 
WHERE GameID IN (
SELECT TOP 1 GameID 
FROM Rental 
GROUP BY GameID 
ORDER BY Count(GameID) DESC);


SELECT GameName
FROM Game
WHERE GameID NOT IN (
SELECT GameID
FROM Rental
WHERE RMonth =3
);


SELECT FirtsName, LastName
FROM SysUser 
WHERE Email IN (
SELECT TOP 1 Email 
FROM Rental 
WHERE RMonth = 3 
GROUP BY Email 
ORDER BY Count(Email) DESC);


SELECT VendorName 
FROM Game 
WHERE GameID IN(SELECT TOP 1 GameID 
FROM Rental 
WHERE RMonth = 3 
GROUP BY GameID 
ORDER BY Count(GameID) DESC);


SELECT VendorName
FROM Vendor
WHERE VendorName NOT IN (
SELECT VendorName
FROM Game
WHERE GameID IN (
SELECT GameID
FROM Rental
WHERE RMonth =3)
);

SELECT VendorName
FROM Vendor
WHERE VendorName NOT IN(
SELECT VendorName
FROM Game
WHERE GameYear = 2021
);



