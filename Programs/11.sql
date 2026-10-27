USE CollegeDB;

-- Create Department table
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

-- Create Employee table with constraints
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Salary INT CHECK (Salary > 0),
    DeptID INT,
    Status VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

-- Insert sample data into Department
INSERT INTO Department
VALUES
(1, 'IT'),
(2, 'HR');

-- Insert sample data into Employee
INSERT INTO Employee (EmpID, Name, Salary, DeptID)
VALUES (101, 'Arun', 30000, 1);