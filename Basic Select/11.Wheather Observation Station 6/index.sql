SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%' 
   OR CITY LIKE 'E%' 
   OR CITY LIKE 'I%' 
   OR CITY LIKE 'O%' 
   OR CITY LIKE 'U%';

/* Theory And Other Approches */

Here’s how the database processes your query internally:
	1.	FROM STATION → take all rows
	2.	WHERE → filter only cities starting with vowels
	3.	SELECT DISTINCT CITY → keep only unique city names
	4.	(Optional ORDER BY) → sort the final result

Allternative Approach:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou]';


Case Insesitive approach:

SELECT DISTINCT CITY
FROM STATION
WHERE UPPER(CITY) LIKE 'A%'
   OR UPPER(CITY) LIKE 'E%'
   OR UPPER(CITY) LIKE 'I%'
   OR UPPER(CITY) LIKE 'O%'
   OR UPPER(CITY) LIKE 'U%';