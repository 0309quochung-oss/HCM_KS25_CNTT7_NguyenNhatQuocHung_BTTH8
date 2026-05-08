CREATE TABLE Department_New (
    dept_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) 
    );
    
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    emp_name VARCHAR(100) NOT NULL,
    gender INT DEFAULT 1,
    birth_date DATE,
    salary DECIMAL(10,2),
    dept_id INT,
    
    
    FOREIGN KEY (dept_id)
    REFERENCES Department(dept_id)
    ON UPDATE CASCADE
    );
    
CREATE TABLE Project (
    project_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    project_name VARCHAR(150) NOT NULL, 
    emp_id INT,
    start_date DATE DEFAULT (CURRENT_DATE),
    end_date DATE,
    
    FOREIGN KEY (emp_id)
    REFERENCES Employee(emp_id)
    );
