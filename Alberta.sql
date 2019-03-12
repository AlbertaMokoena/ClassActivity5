create database ClassActivity5
go
use ClassActivity5
go
CREATE TABLE  "Employees" 
   (	
    EMP_CODE INT NOT NULL PRIMARY KEY, 
	EMP_NAME CHAR(40), 
	EMP_SURNAME CHAR(35)
	
	 );
	 go

	 CREATE TABLE  Customers
   (	"CUST_CODE" INt NOT NULL PRIMARY KEY, 
	"CUST_NAME" VARCHAR(40) NOT NULL, 
	"CUST_SURNAME" VARCHAR(50), 
	"EMP_CODE" INT NOT NULL REFERENCES Employees
	
	
); 
go
CREATE TABLE  "Orders" 
   (
        ORD_NUM INT NOT NULL PRIMARY KEY, 
		ORD_QUANTITY int  NOT NULL, 
	
	"EMP_CODE" INT NOT NULL REFERENCES Employees,  
	ORD_DESCRIPTION VARCHAR(60) 
	
   );
   go
   --insert into Employees
   INSERT INTO Employees VALUES (1, N'Ramasundar', 'Bangalore');
INSERT INTO Employees VALUES (2, N'Alex ', 'Johnson');
INSERT INTO Employees VALUES (3, N'Alford', 'Smith');
INSERT INTO Employees VALUES  (4, N'Simphiwe', 'Zulu');
INSERT INTO Employees VALUES  (5, N'Santakumar', 'Chennai');

--insert into Customers
INSERT INTO Customers VALUES (1,'ALberta', 'Mokoena',1);
INSERT INTO Customers VALUES (2,'Isabel', 'Radebe', 2);
INSERT INTO Customers VALUES (3,'ALbert', 'Mokoena',3);
INSERT INTO Customers VALUES (4,'Lebo', 'Smith',4);
INSERT INTO Customers VALUES (5,'Unathi', 'Radebe', 5);

--insert into Orders
INSERT INTO Orders VALUES(1,10, 1, 'Pending');
INSERT INTO Orders VALUES(2,3000, 2, 'Placed');
INSERT INTO Orders VALUES(3, 4500.00,  3, 'Cancelled');
INSERT INTO Orders VALUES(4, 2000.00, 4, 'Placed'); 
INSERT INTO Orders VALUES(5, 4000.00,   5, 'Placed');