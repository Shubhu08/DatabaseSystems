/*
Name: Shubhashree Dash
Assignment: CSCI 585 Homework-2
USC ID: 4328734481
Database Used : livesql
*/

CREATE TABLE enrollment
(SID INTEGER NOT NULL,
ClassName VARCHAR(25) NOT NULL,
Grade CHAR(1) NOT NULL,
PRIMARY KEY (SID, ClassName));

INSERT ALL
INTO enrollment (SID, ClassName, Grade) VALUES (123, 'Processing', 'A')
INTO enrollment (SID, ClassName, Grade) VALUES (123, 'Python', 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (123, 'Scratch', 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (662, 'Java', 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (662, 'Python', 'A')
INTO enrollment (SID, ClassName, Grade) VALUES (662, 'JavaScript', 'A')
INTO enrollment (SID, ClassName, Grade) VALUES (662, 'Scratch', 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (345, 'Scratch' , 'A')
INTO enrollment (SID, ClassName, Grade) VALUES (345, 'JavaScript' , 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (345, 'Python', 'A')
INTO enrollment (SID, ClassName, Grade) VALUES (555, 'Python', 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (555, 'JavaScript', 'B')
INTO enrollment (SID, ClassName, Grade) VALUES (213, 'JavaScript', 'A')
SELECT * FROM dual;

CREATE TABLE instructors
(IID INTEGER NOT NULL,
TeachingHourlyRate FLOAT NOT NULL,
ClassName VARCHAR(25) NOT NULL,
PRIMARY KEY (IID, ClassName));

INSERT ALL
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (1, 'Python', 20)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (2, 'Python', 22)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (3, 'Scratch', 20)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (4, 'Scratch', 22)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (1, 'Java', 20)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (2, 'Java', 22)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (3, 'JavaScript', 20)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (4, 'JavaScript', 22)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (1, 'Processing', 20)
INTO instructors (IID, ClassName, TeachingHourlyRate) VALUES (2, 'Processing', 22)
SELECT * FROM dual;

SELECT MAX(SUM(TeachingHourlyRate * Total * 0.1)) AS "Maximum Bonus"
FROM instructors INNER JOIN (SELECT ClassName, COUNT(ClassName) AS Total FROM enrollment GROUP BY ClassName) enrollmentCount
ON instructors.ClassName = enrollmentCount.ClassName
GROUP BY IID
