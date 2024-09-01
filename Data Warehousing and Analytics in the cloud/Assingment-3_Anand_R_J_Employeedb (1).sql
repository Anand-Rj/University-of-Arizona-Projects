#question 1 
CREATE DATABASE Worker;

SHOW DATABASES;

#question 2
CREATE TABLE Worker.Department
(
DepartmentID TINYINT NOT NULL,
DepartmentNm CHAR(30)NOT NULL,
PRIMARY KEY (DepartmentID)
);
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (1,'Research & Development');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (2,'Production');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (3,'IT Support');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (4,'Operations');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (5,'Customer Service');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (6,'Purchasing');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (7,'Sales & Marketing');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (8,'Human Resource Management');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (9,'Accounting and Finance');
INSERT INTO Worker.Department(DepartmentID,DepartmentNm) VALUES (10,'Legal');
SELECT * FROM Worker.Department;

#question 3
CREATE TABLE Worker.Employee
(
EmployeeID INTEGER NOT NULL,
DepartmentID TINYINT NOT NULL,
FirstName VARCHAR(20)NOT NULL,
LastName VARCHAR(20)NOT NULL,
Address VARCHAR(50),
PhoneNumberTxt VARCHAR(15),
HireDate DATE NOT NULL,
PRIMARY KEY (EmployeeID),
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
INSERT INTO Worker.Employee(EmployeeID,DepartmentID,FirstName,LastName,Address,PhoneNumberTxt,HireDate) VALUES (1, 2, 'Andy', 'Wong', '345 South Street', '(603) 555-6880', '2001-01-15');
INSERT INTO Worker.Employee(EmployeeID,DepartmentID,FirstName,LastName,Address,PhoneNumberTxt,HireDate) VALUES (2, 1, 'John', 'Wilson', '560 Broadway', '(518) 555-6690', '2017-03-19');
INSERT INTO Worker.Employee(EmployeeID,DepartmentID,FirstName,LastName,Address,PhoneNumberTxt,HireDate) VALUES (3, 3, 'Vivek', 'Pandey', '15 Mineral Drive', '(603) 555-4420', '2003-11-15');
INSERT INTO Worker.Employee(EmployeeID,DepartmentID,FirstName,LastName,Address,PhoneNumberTxt,HireDate) VALUES (4, 7, 'Nola', 'Davis', '15 Long Ave', '(478) 555-8822', '2016-03-23');
INSERT INTO Worker.Employee(EmployeeID,DepartmentID,FirstName,LastName,Address,PhoneNumberTxt,HireDate) VALUES (5, 8, 'Kathy', 'Cooper', '15 Hatter Drive', '(212) 555-9630', '2011-11-18');
INSERT INTO Worker.Employee(EmployeeID,DepartmentID,FirstName,LastName,Address,PhoneNumberTxt,HireDate) VALUES (6, 9, 'Tom', 'Harper', '64 Highland Street', '(212) 555-7755', '2010-04-11');
SELECT * FROM  Worker.Employee;

#question 4
CREATE TABLE Worker.Equipment
(
EquipmentID INTEGER NOT NULL,
EquipmentName VARCHAR(30)NOT NULL,
EquipmentCostAmount DECIMAL(13,2),
PRIMARY KEY (EquipmentID)
);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (1,'Notebook Computer', 1000);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (2,'Headsets', 50);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (3,'Computer Monitor', 75);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (4,'Multi-Function Printers', 140);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (5,'Projector or a Big Screen TV', 700);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (6,'Servers', 1400);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (7,'Internet Modem', 20);
INSERT INTO Worker.Equipment(EquipmentID,EquipmentName,EquipmentCostAmount) VALUES (8,'Cell Phone', 200);
SELECT * FROM  Worker.Equipment;

#question 5
CREATE TABLE Worker.EmployeeEquipment
(
EmployeeID INTEGER NOT NULL,
EquipmentID INTEGER NOT NULL,
PRIMARY KEY (EmployeeID,EquipmentID),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (1,1);
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (2,1),(2,3);
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (3,1),(3,2),(3,3);
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (4,1),(4,2);
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (5,1),(5,2),(5,3);
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (6,1),(6,3);
SELECT * FROM  Worker.EmployeeEquipment;


#question 6
CREATE TABLE Worker.Training
(
TrainingID INTEGER NOT NULL,
TrainingName VARCHAR(50)NOT NULL,
PRIMARY KEY (TrainingID)
);
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (1,'COVID-19 Awareness and Protection Training');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (2,'Code of Conduct Training');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (3,'Safety Traning');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (4,'Intro to Python');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (5,'Machine Learning');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (6,'Microsoft Certifications');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (7,'Security and Privacy');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (8,'Product Knowledge');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (9,'Sales Skills');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (10,'Employee Relations');
INSERT INTO Worker.Training(TrainingID,TrainingName) VALUES (11,'Travel and Expense Management');
SELECT * FROM  Worker.Training;

#question 7
CREATE TABLE Worker.EmployeeTraining
(
EmployeeID INTEGER NOT NULL,
TrainingID INTEGER NOT NULL,
PRIMARY KEY (EmployeeID,TrainingID),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (1,2),(1,3);
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (2,2),(2,4),(2,5);
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (3,2),(3,6),(3,7);
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (4,2),(4,8),(4,9);
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (5,2),(5,10);
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (6,2),(6,11);
SELECT * FROM  Worker.EmployeeTraining;

#question 8
CREATE TABLE Worker.Trainer
(
TrainerID INTEGER NOT NULL,
TrainingID INTEGER NOT NULL,
TrainerFirstName VARCHAR (20) NOT NULL,
TrainerLastName VARCHAR (20) NULL,
PRIMARY KEY (TrainerID),
FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (1,1,'James','Smith');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (2,1,'Johnny','Khor');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (3,2,'Michael','Smith');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (4,3,'Maria','Garcia');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (5,4,'John', NULL);
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (6,4,'Paul','Deitel');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (7,5,'Mike','Taylor');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (8,5,'Avinash','Navlani');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (9,6,'Robert','Smith');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (10,7,'Maria','Rodriguez');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (11,8,'Mike','Donlon');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (12,9,'Kathy','Corby');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (13,10,'Mary','Garcia');
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (14,10,'vanessa', NULL);
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (15,11,'Jordan',NULL);
INSERT INTO Worker.Trainer(TrainerID,TrainingID,TrainerFirstName,TrainerLastName) VALUES (16,11,'Maria','Hernandez');
SELECT * FROM  Worker.Trainer;

#question 9
SELECT * FROM Trainer
WHERE TrainerLastName IS NULL
ORDER BY TrainerID;

#question 10
SHOW TABLES IN Worker;

#question 11
SELECT EmployeeID, FirstName, LastName, HireDate
FROM Employee
WHERE HireDate > (
    SELECT HireDate
    FROM Employee
    WHERE FirstName = 'Vivek' AND LastName = 'Pandey'
)
ORDER BY EmployeeID;

#question 12
SELECT e.FirstName, e.LastName, t.TrainingName
FROM Employee e
JOIN EmployeeTraining et ON e.EmployeeID = et.EmployeeID
JOIN Training t ON et.TrainingID = t.TrainingID
WHERE e.FirstName = 'Tom' AND e.LastName = 'Harper'
ORDER BY t.TrainingName;

#question 13
SELECT t.TrainingName, TrainerFirstName, TrainerLastName
FROM Training t
JOIN Trainer tr ON t.TrainingID = tr.TrainerID
ORDER BY t.TrainingName, TrainerFirstName, TrainerLastName;

#question 14
SELECT EmployeeID, FirstName, LastName, HireDate
FROM Employee
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Department
    WHERE DepartmentNm IN ('Accounting and Finance', 'IT Support', 'Production')
)
ORDER BY EmployeeID;

#question 15
SELECT e.EmployeeID, e.FirstName, e.LastName, eq.EquipmentName, eq.EquipmentCostAmount
FROM Employee e
JOIN EmployeeEquipment ee ON e.EmployeeID = ee.EmployeeID
JOIN Equipment eq ON ee.EquipmentID = eq.EquipmentID
WHERE e.EmployeeID = 1  #Giving random employee id to test 
ORDER BY e.EmployeeID;

#question 16
SELECT t.TrainingID, t.TrainingName, tr.TrainerID, 
       TrainerFirstName,TrainerLastName
FROM Training t
JOIN Trainer tr ON tr.TrainerID = tr.TrainerID
WHERE TrainerLastName IS NULL OR TrainerLastName = ''
ORDER BY t.TrainingID, tr.TrainerID;


#question 17
SELECT DISTINCT eq.EquipmentName
FROM Equipment eq
JOIN EmployeeEquipment ee ON eq.EquipmentID = ee.EquipmentID
JOIN Employee e ON ee.EmployeeID = e.EmployeeID
ORDER BY eq.EquipmentName;

#question 18
SELECT e.FirstName AS EmployeeFirstName, 
       e.LastName AS EmployeeLastName,
       t.TrainingName, 
       TrainerFirstName, 
       TrainerLastName
FROM Employee e
JOIN EmployeeTraining et ON e.EmployeeID = et.EmployeeID
JOIN Training t ON et.TrainingID = t.TrainingID
JOIN Trainer tr ON tr.TrainerID = tr.TrainerID
WHERE e.EmployeeID = 1  #Giving random employee id to test 
ORDER BY t.TrainingName, TrainerFirstName ;


#question 19
SELECT e.EmployeeID, e.FirstName, e.LastName,
       d.DepartmentID, d.DepartmentNm,
       eq.EquipmentID, eq.EquipmentName
FROM Employee e
JOIN Department d ON e.DepartmentID = d.DepartmentID
LEFT JOIN EmployeeEquipment ee ON e.EmployeeID = ee.EmployeeID
LEFT JOIN Equipment eq ON ee.EquipmentID = eq.EquipmentID
ORDER BY e.EmployeeID, d.DepartmentID, eq.EquipmentID;

#question 20
SELECT e.EmployeeID, e.FirstName, e.LastName,
       d.DepartmentID, d.DepartmentNm,
       t.TrainingID, t.TrainingName
FROM Employee e
JOIN Department d ON e.DepartmentID = d.DepartmentID
LEFT JOIN EmployeeTraining et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Training t ON et.TrainingID = t.TrainingID
ORDER BY e.EmployeeID, d.DepartmentID, t.TrainingID;




