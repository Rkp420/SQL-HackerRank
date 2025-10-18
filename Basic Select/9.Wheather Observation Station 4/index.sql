SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

/* THEORY */
When you see words like:
	•	“Total number of …” → COUNT(column)
	•	“Distinct number of …” → COUNT(DISTINCT column)
	•	“Difference between them” → Subtract the two counts.