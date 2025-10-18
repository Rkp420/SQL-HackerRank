(
SELECT CITY, LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1
)
UNION
(
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1 
);

/* Theory */

When you’re asked for smallest/largest string, number, or date:
	1.	Use ORDER BY to sort in correct direction
	2.	Use secondary sort key to break ties
	3.	Use LIMIT 1 to pick one row
	4.	Use UNION to merge multiple results