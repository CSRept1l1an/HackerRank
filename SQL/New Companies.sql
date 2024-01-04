WITH EmployeeCounts AS (
    SELECT
        C.company_code,
        C.founder,
        COUNT(DISTINCT LM.lead_manager_code) AS total_lead_managers,
        COUNT(DISTINCT SM.senior_manager_code) AS total_senior_managers,
        COUNT(DISTINCT M.manager_code) AS total_managers,
        COUNT(DISTINCT E.employee_code) AS total_employees
    FROM Company C
    LEFT JOIN Lead_Manager LM ON C.company_code = LM.company_code
    LEFT JOIN Senior_Manager SM ON LM.lead_manager_code = SM.lead_manager_code
    LEFT JOIN Manager M ON SM.senior_manager_code = M.senior_manager_code
    LEFT JOIN Employee E ON M.manager_code = E.manager_code
    GROUP BY C.company_code, C.founder
)

SELECT
    EC.company_code,
    EC.founder,
    COALESCE(EC.total_lead_managers, 0) AS total_lead_managers,
    COALESCE(EC.total_senior_managers, 0) AS total_senior_managers,
    COALESCE(EC.total_managers, 0) AS total_managers,
    COALESCE(EC.total_employees, 0) AS total_employees
FROM EmployeeCounts EC
ORDER BY EC.company_code;
