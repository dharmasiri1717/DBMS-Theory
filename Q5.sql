CREATE TABLE Person (
    Ssn VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100),
    Sex CHAR(1),
    Address VARCHAR(255),
    DOB DATE
);


CREATE TABLE Alumnus_Degree (
    Ssn VARCHAR(10),
    Degree VARCHAR(50),
    Year INT,
    Major VARCHAR(100),
    PRIMARY KEY (Ssn, Degree),
    FOREIGN KEY (Ssn) REFERENCES Person(Ssn)
);


CREATE TABLE Employee (
    Ssn VARCHAR(10) PRIMARY KEY,
    Salary DECIMAL(10, 2),
    EType VARCHAR(50),
    Position VARCHAR(100),
    Rank INT,
    FOREIGN KEY (Ssn) REFERENCES Person(Ssn)
);

CREATE TABLE Student (
    Ssn VARCHAR(10) PRIMARY KEY,
    Major_dept VARCHAR(100),
    SType VARCHAR(50),
    Degree_program VARCHAR(100),
    Class VARCHAR(20),
    FOREIGN KEY (Ssn) REFERENCES Person(Ssn)
);

CREATE TABLE Student_Assistant (
    Ssn VARCHAR(10) PRIMARY KEY,
    Percent_time DECIMAL(5, 2),
    AType VARCHAR(50),
    Project VARCHAR(100),
    Course VARCHAR(50),
    FOREIGN KEY (Ssn) REFERENCES Person(Ssn)
);
