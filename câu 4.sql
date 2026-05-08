-- 1.CASE & AS.
SELECT 
    emp_name,
    email,
    CASE
        WHEN gender = 1 THEN 'Nam'
        ELSE 'Nu'
    END AS gender_name
FROM Employee;

--2.Hàm hệ thống.
SELECT
    UPPER(emp_name) AS employee_name,
    YEAR(CURDATE()) - YEAR(birth_date) AS age
FROM Employee;

--3.INNER JOIN.
SELECT
    Employee.emp_name,
    Employee.salary,
    Department.dept_name
FROM Employee
INNER JOIN Department
ON Employee.dept_id = Department.dept_id;

--4.ORDER BY & LIMIT.
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 2;

--5.GROUP BY & HAVING.
SELECT
    dept_id,
    COUNT(*) AS total_employee
FROM Employee
GROUP BY dept_id
HAVING COUNT(*) >= 2;

--6.Scalar Subquery.
SELECT *
FROM Employee
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employee
);

--7.IN Operator Subquery.
SELECT *
FROM Employee
WHERE emp_id IN
(
    SELECT emp_id
    FROM Project
);

--8.Correlated Subquery.
SELECT *
FROM Employee e1
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employee e2
    WHERE e1.dept_id = e2.dept_id
);

