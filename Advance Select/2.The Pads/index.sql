SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT("There are a total of ", COUNT(*), " ", LOWER(OCCUPATION), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*), OCCUPATION;

/* Theory */
CONCAT is Used For String Concatination

// Postgress uses "||" For CONCAT
(
  SELECT Name || '(' || LEFT(Occupation, 1) || ')' AS result
  FROM OCCUPATIONS
  ORDER BY Name
)
UNION ALL
(
  SELECT 'There are a total of ' || COUNT(*) || ' ' ||
         LOWER(Occupation) || 's.'
  FROM OCCUPATIONS
  GROUP BY Occupation
  ORDER BY COUNT(*), Occupation
);