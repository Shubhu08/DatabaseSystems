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

SELECT ClassName, COUNT(ClassName) AS Total FROM enrollment GROUP BY ClassName ORDER BY Total DESC;
