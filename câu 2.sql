ALTER TABLE Employee
ADD email VARCHAR(100) UNIQUE;

ALTER TABLE Project
MODIFY project_name VARCHAR(200);

ALTER TABLE Project
ADD CONSTRAINT chk_date
CHECK (end_date >= start_date);
