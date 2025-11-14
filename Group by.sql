-- 1. Display all employee demographic records

SELECT *
FROM parks_and_recreation.employee_demographics; 
-- This will show all columns and all rows in the employee_demographics table

-- 2. Calculate average age grouped by gender
SELECT gender, AVG(age) AS average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
-- AVG(age) computes the average age for each gender
-- GROUP BY groups rows by the gender column

-- 3. Display all employee salary records
SELECT *
FROM parks_and_recreation.employee_salary;
-- Shows all columns and rows from employee_salary table

-- 4. Calculate total salary by salary value
SELECT salary, SUM(salary) AS sum_of_salary
FROM parks_and_recreation.employee_salary
GROUP BY salary;
-- SUM(salary) adds up all salaries for each unique salary amount
-- GROUP BY ensures aggregation happens per salary

-- 5. Count total employees by gender
SELECT gender, COUNT(*) AS total_employees
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
-- COUNT(*) counts the number of employees in each gender group

-- 6. Multiple aggregations: avg, max, min, count of age per gender
SELECT 
    gender,
    AVG(age) AS average_age,
    MAX(age) AS max_age,
    MIN(age) AS min_age,
    COUNT(age) AS age_count
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
-- This query provides multiple statistics for each gender

