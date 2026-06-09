use companyDB;
SELECT * FROM Employees;
INSERT INTO Employees
(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(5, 'David', 'Brown', 'Marketing', 58000.00, '2024-01-10');
UPDATE Employees
SET Department = 'Sales'
WHERE EmployeeID = 5;

INSERT INTO Employees
(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(4, 'mohan', 'krishna', 'admin', 45437344.00, '2024-01-10');
INSERT INTO Employees
(EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'nagasheshu', 'krishna', 'owner', 35674646.00, '2023-01-10');
