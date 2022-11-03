/*
Name: Shubhashree Dash
Assignment: CSCI 585 Homework-2
USC ID: 4328734481
Database Used : livesql
*/
/*
  One method without using triggers would be to have set slot of 1 hr each, and make users elect particular slot for particular time instead of custom ranges.
  There would be a constraint on the hour and roomNum that they will have to be unique. This system would not allow another row to be inserted if the the room is already booked for that hour.
  I have showed a second method using triggers s which would let user enter a custom range for a particular room.
*/

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime));

ALTER TABLE ProjectRoomBookings
ADD CONSTRAINT checkStartAndEndDate
CHECK (endTime > StartTime);

CREATE OR REPLACE TRIGGER multipleBookingCheck
BEFORE INSERT OR UPDATE
ON ProjectRoomBookings
FOR EACH ROW
DECLARE
    l_cnt INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO l_cnt
        FROM
            ProjectRoomBookings currentBookings
        WHERE
            (currentBookings.endTime >= :NEW.startTime OR :NEW.endTime >= currentBookings.startTime) AND (currentBookings.roomNum = :NEW.roomNum);
    IF(l_cnt > 0) THEN
        RAISE_APPLICATION_ERROR(-20000,'Schedule ranges should not overlap');
    END IF;
END;
