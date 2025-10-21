SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
SELECT
Name,
Occupation,
ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS rn
FROM OCCUPATIONS
) AS X
GROUP BY rn
ORDER BY rn;

/* Theory */ 

	•	PARTITION BY → divides data into 4 occupation groups.
	•	ROW_NUMBER() → gives each group its internal order.
	•	CASE → creates virtual columns.
	•	MAX() + GROUP BY → reconstruct the final grid structure.