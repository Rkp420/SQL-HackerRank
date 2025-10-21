SELECT 
N,
CASE 
    WHEN P IS NULL THEN 'Root'
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
    ELSE 'Leaf'
    END
AS node_type
FROM BST
ORDER BY N;

/* Theory */ 

Concept	Example	Explanation

CASE WHEN	CASE WHEN P IS NULL THEN ...	Used for multi-condition logic
IN (subquery)	N IN (SELECT DISTINCT P ...)	Checks if node appears as a parent
DISTINCT	SELECT DISTINCT P	Ensures no duplicates in parent list
IS NULL	Detects root node	
ORDER BY N	Sort by node value
