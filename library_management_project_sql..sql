CREATE DATABASE LibraryManagement;

USE LibraryManagement;

CREATE TABLE Books(
BookID INT PRIMARY KEY,
Title VARCHAR(255),
Author VARCHAR(255),
Publisher VARCHAR(255),
YearPublished INT,
ISBN VARCHAR(255),
Quantity INT 
);


CREATE TABLE Members(
MemberID INT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255), 
Phone VARCHAR(255),
Address VARCHAR(255)
);

CREATE TABLE Borrowings(
borrowID INT PRIMARY KEY,
bookID INT,
MemberID INT,
BorrowDate DATE,
ReturnDate DATE,
FOREIGN KEY (BooKID)REFERENCES Books(BookID),
FOREIGN KEY (MemberID) REFERENCES Members(MemberID) 
);


CREATE TABLE Fines(
FineID INT PRIMARY KEY,
BorrowID INT,
FineAmount DECIMAL(10,2),
FineDate DATE,
FOREIGN KEY(BorrowID) REFERENCES
Borrowings(BorrowID)
);


INSERT INTO Books(BookID,Title,Author,Publisher,Yearpublished,ISBN, Quantity)
VALUES
(1,'Book1','Author1','Publisher1',2020,'ISBN',5),
(2,'Book2','Author2','Publisher2',2021,'ISBN',3),
(3,'Book3','Author3','Publisher3',2022,'ISBN',2);


INSERT INTO Members(MemberID,Name,Email,Phone,Address)
VALUES
(1,'Member1','member1@example.com',
'1234567890','Address1'),
(2,'Member2','member2@example.com','9876543210','Address2'),
(3,'Member3','member3@example.com','5555555555','Address3');


INSERT INTO Borrowings(BorrowID,bookid, MemberID, BorrowDate, ReturnDate)
VALUES
(1,1,1,'2022-01-01','2022-01-15'),
(2,2,2,'2022-02-01','2022-02-15'),
(3,3,3,'2022-03-01','2022-03-15');


INSERT  INTO Fines(FineID, BorrowID, FineAmount,FineDate)
VALUES
(1,1,10.00,'2022-01-16'),
(2,2,20.00,'2022-02-16'),
(3,3,20.00,'2022-03-16');


CREATE TABLE GOVINDSINGH;







