SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE '%A'
    OR CITY LIKE '%E'
    OR CITY LIKE '%I'
    OR CITY LIKE '%O'
    OR CITY LIKE '%U';

/* Theory */

The % wildcard in SQL:
	•	A% → starts with A
	•	%A → ends with A
	•	%A% → contains A anywhere

// Alternative Approach :

SELECT DISTINCT CITY
FROM STATION
WHERE UPPER(CITY) LIKE '%A'
   OR UPPER(CITY) LIKE '%E'
   OR UPPER(CITY) LIKE '%I'
   OR UPPER(CITY) LIKE '%O'
   OR UPPER(CITY) LIKE '%U';


// Another Approach Using RegEx

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[AEIOUaeiou]$';