-- Query 1: Filter records with exact match using WHERE
-- Retrieves all employees whose first name is "Tom".
SELECT 
    first_name
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Tom';


-- Query 2: Filter using multiple conditions (AND operator)
-- Returns all male employees older than 30 years.
SELECT
    first_name,
    age,
    gender
FROM parks_and_recreation.employee_demographics
WHERE age > 30 AND gender = 'male';


-- Query 3: Combine AND and OR for complex conditions
-- Retrieves female employees born on or after 1990-01-01
-- OR any employee (of any gender) born before 1990-01-01.
SELECT 
    first_name,
    gender,
    birth_date
FROM parks_and_recreation.employee_demographics
WHERE (gender = 'female' AND birth_date >= '1990-01-01') 
   OR birth_date < '1990-01-01';


-- Query 4: Pattern matching using LIKE and wildcards
-- 'an%'  → names starting with "an"
-- '%a'   → names ending with "a"
SELECT
    first_name
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'an%' OR first_name LIKE '%a';


-- Query 5: Using underscores (_) in LIKE for character positions
-- '__a%' → names with 'a' as the third character
-- 'a__%' → names starting with 'a' and at least 3 characters long
SELECT
    first_name
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '__a%' OR first_name LIKE 'a__%';


-- Query 6: Filtering dates using LIKE
-- '1985%' → all birth dates that start with the year 1985.
SELECT
    birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1985%';
