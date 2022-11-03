/*
Name: Shubhashree Dash
Assignment: CSCI 585 Homework-2
USC ID: 4328734481
Database Used : livesql
*/

CREATE TABLE instructor
(InstructorName VARCHAR(50) NOT NULL,
ClassName VARCHAR(20) NOT NULL,
PRIMARY KEY (InstructorName, ClassName));

INSERT ALL
INTO instructor (InstructorName, ClassName) VALUES('Aleph', 'Scratch')
INTO instructor (InstructorName, ClassName) VALUES('Aleph', 'Java')
INTO instructor (InstructorName, ClassName) VALUES('Aleph', 'Processing')
INTO instructor (InstructorName, ClassName) VALUES('Bit', 'Python')
INTO instructor (InstructorName, ClassName) VALUES('Bit', 'JavaScript')
INTO instructor (InstructorName, ClassName) VALUES('Bit', 'Java')
INTO instructor (InstructorName, ClassName) VALUES('CRC', 'Python')
INTO instructor (InstructorName, ClassName) VALUES('CRC', 'JavaScript')
INTO instructor (InstructorName, ClassName) VALUES('Dat', 'Scratch')
INTO instructor (InstructorName, ClassName) VALUES('Dat', 'Python')
INTO instructor (InstructorName, ClassName) VALUES('Dat', 'JavaScript')
INTO instructor (InstructorName, ClassName) VALUES('Emscr', 'Scratch')
INTO instructor (InstructorName, ClassName) VALUES('Emscr', 'Processing')
INTO instructor (InstructorName, ClassName) VALUES('Emscr', 'JavaScript')
INTO instructor (InstructorName, ClassName) VALUES('Emscr', 'Python')
SELECT * FROM dual;

SELECT InstructorName FROM instructor WHERE ClassName IN ('JavaScript', 'Scratch', 'Python')
GROUP BY InstructorName HAVING COUNT(ClassName) = 3;

/*
The query get the instructors who teach the three said subjects, out of these instructors, it then groups them based on the name to find out how many subjects they teach. If the count is 3, then it returns the instructors names.
*/
