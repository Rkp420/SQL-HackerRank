SELECT DISTINCT CITY
FROM STATION
WHERE (ID % 2 = 0);

/* THEORY */

Whenever you see a question asking for unique values,
immediately think → “DISTINCT or GROUP BY?”