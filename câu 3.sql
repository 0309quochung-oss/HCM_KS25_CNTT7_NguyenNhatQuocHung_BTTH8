INSERT INTO Department(dept_id, dept_name, location)
VALUES
(1, 'IT', 'Ha Noi'),
(2, 'HR', 'HCM'),
(3, 'Marketing', 'Da Nang');


INSERT INTO Employee(emp_id, emp_name, gender, birth_date, salary, dept_id, email)
VALUES
(1, 'Nguyen Van A', 1, '1990-01-15', 1500, 1, 'a@gmail.com'),
(2, 'Tran Thi B', 0, '1995-05-20', 1200, 1, 'b@gmail.com'),
(3, 'Le Minh C', 1, '1988-10-10', 2000, 2, 'c@gmail.com'),
(4, 'Pham Thi D', 0, '1992-12-05', 1800, 3, 'd@gmail.com');


INSERT INTO Project(project_id, project_name, emp_id, start_date, end_date)
VALUES
(101, 'Website Redesign', 1, '2024-01-01', '2024-06-01'),
(102, 'Recruitment System', 3, '2024-02-01', '2024-08-01'),
(103, 'Marketing Campaign', 4, '2024-03-01', NULL);


UPDATE Employee
SET salary = salary + 200
WHERE dept_id = 1;

UPDATE Employee
SET salary = salary + 200
WHERE dept_id = 1;

DELETE FROM Project
WHERE start_date < '2024-02-01';
