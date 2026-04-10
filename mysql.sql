CREATE DATABASE StudentDB;
GO

USE StudentDB;
GO

CREATE TABLE Class (
    ClassID VARCHAR(20) PRIMARY KEY,
    ClassName VARCHAR(100) NOT NULL,
    SchoolYear VARCHAR(20)
);

CREATE TABLE Student (
    StudentID VARCHAR(20) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    DateOfBirth DATE,
    ClassID VARCHAR(20),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE Subject (
    SubjectID VARCHAR(20) PRIMARY KEY,
    SubjectName VARCHAR(100) NOT NULL,
    Credits INT CHECK (Credits > 0)
);

CREATE TABLE Enrollment (
    StudentID VARCHAR(20),
    SubjectID VARCHAR(20),
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);
