-- LIMIT: get a specific number of rows after sorting and filtering
SELECT *  
FROM parks_and_recreation.employee_demographics
WHERE age > 30 AND age <= 40 and 40
ORDER BY age DESC
LIMIT 2, 3;  -- Skip first 2 rows, then return next 3 rows


-- Aliasing: rename a column or expression to make output easier to read
SELECT occupation, AVG(salary) AS Average_salary   -- 'AS Average_salary' renames the AVG(salary) column
FROM parks_and_recreation.employee_salary
GROUP BY occupation;
