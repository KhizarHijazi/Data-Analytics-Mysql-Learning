-- 1. Order employee records by gender
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender;
-- ORDER BY sorts data alphabetically by gender

-- 2. Order employee first names alphabetically
SELECT first_name
FROM parks_and_recreation.employee_demographics
ORDER BY first_name;
-- Only first_name is displayed, sorted alphabetically

-- 3. Order all employees by age ascending
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age ASC;
-- ASC = ascending (youngest to oldest)

-- 4. Order all employees by age descending
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC;
-- DESC = descending (oldest to youngest)

-- 5. Order by multiple columns: gender, age, first_name descending
SELECT first_name, age, gender
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age, first_name ;
-- gender → The data is first sorted by gender in ascending order
-- age → Within each gender group, data is sorted by age in ascending order (smallest to largest).
-- first_name → Within each gender and age group, data is sorted by first_name in ascending order (A

-- 6. Bad practice example: ordering by column position
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 2, 4, 5 ;
-- Using column positions is not recommended because column positions may change
-- Always prefer ordering by explicit column names