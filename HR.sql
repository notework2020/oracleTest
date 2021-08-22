SELECT DISTINCT *
FROM PC
WHERE price > (SELECT MIN(price) 
 FROM Laptop
 );


SELECT MIN(price) 
 FROM Laptop