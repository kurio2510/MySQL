CREATE DATABASE StudentDB;

USE StudentDB;

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
    FOREIGN KEY (ClassID) REFERENCES Class (ClassID)
);

CREATE TABLE Student (
    StudentID VARCHAR(20) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL
);

CREATE TABLE Subject (
    SubjectID VARCHAR(20) PRIMARY KEY,
    SubjectName VARCHAR(100) NOT NULL,
    Credits INT,
    CONSTRAINT CHK_Credits CHECK (Credits > 0)
);

CREATE TABLE Enrollment (
    StudentID VARCHAR(20),
    SubjectID VARCHAR(20),
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject (SubjectID)
);
