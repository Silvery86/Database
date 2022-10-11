CREATE TABLE Classes(
    Code varchar(10) PRIMARY KEY,
    Name VARCHAR(255),
    Room VARCHAR(10)
);
CREATE TABLE Subjects(
    Code VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(255)
);
CREATE TABLE Students(
    Code VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(255),
    Birthday DATE,
    ClassesCode VARCHAR(10) FOREIGN KEY REFERENCES Classes(Code)
);
CREATE TABLE StudentsSubjects(
    StudentsCode VARCHAR(10) FOREIGN KEY REFERENCES Students(Code),
    SubjectsCode VARCHAR(10) FOREIGN KEY REFERENCES Subjects(Code)
);
CREATE TABLE Results(
    ID int PRIMARY KEY,
    Mark INT,
    Result VARCHAR(255),
    StudentsCode VARCHAR(10) FOREIGN KEY REFERENCES Students(Code),
    SubjectsCode VARCHAR(10) FOREIGN KEY REFERENCES Subjects(Code)
);
