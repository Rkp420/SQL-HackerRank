SELECT 
    c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code) AS lead_manager_count,
    COUNT(DISTINCT s.senior_manager_code) AS senior_manager_count,
    COUNT(DISTINCT m.manager_code) AS manager_count,
    COUNT(DISTINCT e.employee_code) AS employee_count
FROM Company c
LEFT JOIN Lead_Manager l 
  ON c.company_code = l.company_code
LEFT JOIN Senior_Manager s 
  ON c.company_code = s.company_code
LEFT JOIN Manager m 
  ON c.company_code = m.company_code
LEFT JOIN Employee e 
  ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
