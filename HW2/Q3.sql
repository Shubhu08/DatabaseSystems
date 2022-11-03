/*
Name: Shubhashree Dash
Assignment: CSCI 585 Homework-2
USC ID: 4328734481
Database Used : livesql
*/

CREATE TABLE projectStatus
(PID CHAR(10) NOT NULL,
Step INTEGER NOT NULL,
Status CHAR(1) NOT NULL,
PRIMARY KEY (PID, Step));

INSERT ALL
INTO projectStatus (PID, Step, Status) VALUES ('P100', 0, 'C')
INTO projectStatus (PID, Step, Status) VALUES ('P100', 1, 'W')
INTO projectStatus (PID, Step, Status) VALUES ('P100', 2, 'W')
INTO projectStatus (PID, Step, Status) VALUES ('P201', 0, 'C')
INTO projectStatus (PID, Step, Status) VALUES ('P201', 1, 'C')
INTO projectStatus (PID, Step, Status) VALUES ('P333', 0, 'W')
INTO projectStatus (PID, Step, Status) VALUES ('P333', 1, 'W')
INTO projectStatus (PID, Step, Status) VALUES ('P333', 2, 'W')
INTO projectStatus (PID, Step, Status) VALUES ('P333', 3, 'W')
SELECT * FROM dual;

SELECT p1.PID FROM projectStatus p1
INNER JOIN projectStatus p2 ON p1.PID = p2.PID AND p1.Step != p2.Step
WHERE (p1.Step = 0 AND p1.Status = 'C') AND (p2.Step = 1 AND p2.Status ='W');
