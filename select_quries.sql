-- Query 1: Select all columns from a table
-- The asterisk (*) returns every column in the table.
SELECT * 
FROM parks_and_recreation.employee_demographics;


-- Query 2: Select specific columns from a table
-- Instead of using *, we can choose only the columns we need.
SELECT
    first_name,
    occupation,
    salary 
FROM parks_and_recreation.employee_salary;


-- Query 3: Performing calculations with columns
-- We can apply arithmetic operations directly in the SELECT clause.
-- Note: This creates new computed columns in the result.
SELECT
    first_name,
    age,
    age + 10 AS age_in_10_years,     -- Adds 10 years to the current age
    (age + 10) * 2 AS double_future_age -- Demonstrates PEMDAS (order of operations)
FROM parks_and_recreation.employee_demographics;


-- Query 4: Using DISTINCT to get unique values
-- DISTINCT removes duplicate values from the selected column.
SELECT DISTINCT
    gender
FROM parks_and_recreation.employee_demographics;