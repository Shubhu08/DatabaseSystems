Shubhashree Dash
4328-7344-81


ASSUMPTIONS:

1. Students may enroll again the next year, thus the Student entity will have all the students who attended the institute. The student must have enrolled in one at least course at the institute.
2. Student can do one project only once. The student must have done at least one project at the institute.
3. Timesheet is filled out by the teacher only once for a single date.
4. A single teacher will teach a group of students a single subject. The same subject cannot be taught by a different teacher to the same group.
5. The project which is not being offered a particular year will have the Table_ID attribute set as NULL.
6. Some basic parts like resistor, capacitors can be ordered from multiple vendors.
7. Book checkout and checkin are updated as soon as these event occur.
8. The books suggested by instructors are all available for check-out from the library
9. The storage box on the table can be changed.

DESIGN WALKTHROUGH:

1. STUDENT: The CLASS entity will hold all the generic information of all the students who have attended the institute. It has STUDENT_ID as the primary key. The Student entity has 4 relationships.
	a. CLASS_ENROLLMENT : Enrolls in class that is stored in the CLASS entity. The CLASS_ENROLLMENT entity is a bridge between the STUDENT and CLASS which holds the information about all the classes that the student has taken, and who has taught them. A student can enroll in multiple classes.
	b. STUDENT_RATING : Rates the instructors, course and the projects done at the institute. The STUDENT_RATING entity has an attribute called "RATING_TYPE" which holds the name of the entity the student is rating, and the "ENTITY_ID" is the primary key of the entity being rated.
	c. PROJECT_ASSIGNMENT : Selects a project to do. The PROJECT_ASSIGNMENT is a bridge between the STUDENT and the PROJECT entity. A student can do multiple projects when at the institute. The PROJECT_ASSIGNMENT also holds the attribute "INSTRUCTOR_ID" from the INSTRUCTOR entity which tells which instructor is supervising the project.
	d. BOOK_CHECKOUT : Check-out a book. This entity stores the "ISBN" of the book that the student check-out.

2. CLASS: The CLASS entity corresponds to the courses that is being taught at the institute. This entity defines the course as being taught by a single instructor to a set group of students. For example instructor X is teaching Python to students A, B, and C and instructor Y is teaching Python to P, Q, and R then both these sections will have different CLASS_ID, and there by be different instances of the entity CLASS. CLASS_ID is the primary key of the entity, and "COURSE_CODE" attribute helps identify if two class have the same course. In above example, the COURSE_CODE for both classes will be same. The CLASS entity has the following relationships.
	a. CLASS_ENROLLMENT : A class can have multiple students enrolling for it.
	b. INSTRUCTOR : A class can be taught by only one instructor. INSTRUCTOR_ID is the foreign key in the CLASS entity. 
	c. ROOM : The room in which the class will be held in

3. INSTRUCTOR: THE INSTRUCTOR entity holds the generic information of all the instructors in the institute. INSTRUCTOR_ID is the primary key for this entity. The INSTRUCTOR entity has the following relations.
	a. CLASS : An instructor can teach multiple classes at the institute. The instructor also recommends a textbook to follow for their class whose "ISBN" is stored in the CLASS entity as a foreign key.
	b. BOOK : The instructor also recommends a textbook to follow for their class whose "ISBN" is stored in the CLASS entity as a foreign key. 
	c. TIME_SHEET : The instructor fills out the time sheet per day telling how many hours they have worked. 
	d. PROJECT_ASSIGNMENT : An instructor can supervise multiple projects. "INSTRUCTOR_ID" is a foreign key in the PROJECT_ASSIGNMENT table.

4. BOOK: The book entity stores all the books available in the library along with the actual quantity available. 
	a. BOOK_CHECKOUT : A book can be check-out by the student. The "ISBN" of the book becomes a foreign key in the BOOK_CHECKOUT entity.
	b. INSTRUCTOR : A book can be recommended by the instructor, and the "ISBN" of the book becomes a foreign key in the CLASS entity.

5. BOOK_CHECKOUT: This entity stores the books checkout by the students along with the checkout date and due date. It uses the "ISBN" and "STUDENT_ID" as its primary key. If the student checks out the same book again, the check out date, due date, and return date will be modified. It is related to 
	a. STUDENT : checked out by 
	b. BOOK : book being checked out

6. TIME_SHEET: TIME_SHEET entity helps to calculate the pay using the hours worked and the pay per hour for the instructor. It uses the "INSTRUCTOR_ID" and "DATE" as the primary key. 

7. STUDENT_RATING: A student rates the instructors, course and the projects done at the institute. The STUDENT_RATING entity has an attribute called "RATING_TYPE" which holds the name of the entity the student is rating, and the "ENTITY_ID" is the primary key of the entity being rated.
	a. STUDENT : "STUDENT_ID" is a foreign key in the STUDENT_RATING entity.
	b. INSTRUCTOR, CLASS, and PROJECT : It uses the "ENTITY_ID" and "RATING_TYPE" to identify the entity being rated and the instance too. 

8. CLASS_ENROLLMENT: It is a bridge entity which stores the information about what all courses the students have taken. It can also tell which students are taking a particular course. It uses "CLASS_ID" and "STUDENT_ID" as its primary key. It is related to
	a. CLASS : class being enrolled
	b. STUDENT : enrolled by 

9. COURSE: This entity just stores the course code used by the institute and the corresponding general course name. It is related to
	a. CLASS : The class entity uses the "COURSE_CODE" attribute as a foreign key to identify the type of course.

10. PROJECT: The PROJECT entity hold the general information about the project. This includes the description, name, and the "TABLE_ID". The "OFFERED_YEAR" for the project will hold a list of years when this project was offered to the students. The PROJECT entity has the following relationships. 
	a. PROJECT_ASSIGNMENT : The project can be done multiple students, so this bridge entity also relates to the PROJECT entity.
	b. TABLE : Each project is assigned a single table.

11. PROJECT_ASSIGNMENT : It is a bridge entity used to identify which students are working on the project and under whose supervision. It is related to
	a. STUDENT : being worked on by a student 
	b. INSTRUCTOR : being supervised by instructor 
	c. PROJECT : the actual project 

12. TABLE: The TABLE entity relates to the following entities.
	a. PROJECT : A table will host students working for on a single project. The "PROJECT_ID" is a foreign key in the table entity.
	b. ROOM : A table will be present in a single room. "ROOM_ID" is a foreign key in the table entity.
	c. STORAGE_BOX : A table would have a particular storage box on it for student to work with. "STORAGE_ID" is a foreign key in the table entity.

13. ROOM: The rooms that are currently being used by the institute and their names. This is used to indentify which room is holding a particular class or project.
	a. CLASS : the class being held in 
	b. TABLE : the table is placed in 

14. STORAGE_BOX: This entity defines what all parts are being held in a single storage box. It uses a combination of "STORAGE_BOX" and "PARTS_ID" as primary key. When grouping by "STORAGE_ID", the other attributes give the complete details of its contents. It relates to
	a. PARTS : Parts are being stored in a storage box
	b. TABLE : the table on which the storage box would be present

15. PARTS: This entity stores the information of all the parts acquired by the institute. It uses "PARTS_ID" as a primary key, and stores the quantity and cost of each part. This entity has a relationship with
	a. STORAGE_BOX : the box in which the part is kept in. A part can be kept in multiple boxes
	b. ORDERS : The order placed from a VENDOR to acquire the particular part. Part can be ordered from multiple vendors, so can be present in multiple orders.

16. VENDORS: The vendor from which a particular part is being orders. It has relationships with
	a. ORDERS : A single order can be placed from a single vendor.

17. ORDERS: The order being placed by the institute are being tracked using this entity. It is a bridge entity between VENDORS and PARTS. It has an attribute "VENDOR_ORDER_ID" which is being used as a primary key, and is received when the order is being placed from the vendor.

DESIGN DECISIONS:

1. I have used bridge multiple bridge entities to reduce data redundancy. 
2. I have used the CLASS entity to support the requirement that a particular course can be taught by multiple instructors.
3. I have used the "RATING_TYPE" and "ENTITY_ID" attributes in the "STUDENT_RATING" table to support the student giving rating for course, instructor and project without having multiple columns. This helps in cases where the number of class taken and project do not match, as a column would not have multiple nulls. This will also help in incase the student re enrolls and have to rate a few classes again.
4. I decided to used the "VENDOR_ORDER_ID" as a primary key as it can also be used when in-correspondence with the vendor regarding the order. 