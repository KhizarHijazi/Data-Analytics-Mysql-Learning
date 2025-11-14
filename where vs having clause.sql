SELECT *
FROM parks_and_recreation.employee_salary;

-- Calculate average salary for each occupation containing 'manager' 
-- Filter records first using WHERE, then group by occupation and use HAVING to filter groups with avg salary > 50000
SELECT occupation, AVG(salary) AS Avg_salary
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary) > 50000;

-- Select first name and occupation of employees whose names contain both 'a' and 'r'
-- Group by first name and occupation, then show only groups with average salary ≥ 50000
SELECT first_name, occupation, AVG(salary) AS Avg_salary
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE "%a%" AND first_name LIKE "%r%" 
GROUP BY occupation, first_name
HAVING AVG(salary) >= 50000;
