-- Active: 1703706762928@@127.0.0.1@5432@test2
--# CREATE DATABASE
CREATE DATABASE db1;

-- ## RENAME DATABASE
ALTER DATABASE db1 RENAME TO db2;

-- ## DELETE DATABASE
DROP DATABASE db1;

-- ## Create a student table

CREATE TABLE student (
  student_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  cgpa NUMERIC(1,2)
)
-- ## Rename a table name
ALTER TABLE student RENAME TO learners

-- ## DELETE a Table
DROP TABLE learners;
-- ## Delete all rows in a table without deleting the Table
TRUNCATE TABLE user1;

-- ## CREATE Table with CONSTRAINTS
CREATE TABLE "user1"(
  user_id SERIAL,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  PRIMARY KEY(user_id,username)
)
CREATE TABLE "user1"(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  age int DEFAULT 18
)

insert into user1 values (1, 'abc', 'abc@gmail.com');

-- ## Insert 1
INSERT INTO user1(user_id,username,email,age) VALUES (2,'Ashiq','asq@gmail.com',28);

-- ## Insert 2
INSERT INTO user1 (username,email) VALUES 
('ashiq2','ask2@gmail.com'),
('ashiq3','ask3@gmail.com');

-- ## Insert 3
INSERT INTO user1  VALUES 
(1,'ashiq1','ask1@gmail.com'),
(2,'ashiq2','ask2@gmail.com');


-- ## ALTER TABLE
-- Add a column, drop a column, change data type of a column
-- rename a column , set DEFAULT value for a Column
-- Add CONSTRAINT to a Column , drop CONSTRAINT for a column
-- table RENAME
-- ALTER TABLE table_name action

--Add a COLUMN
ALTER TABLE user1
add column password VARCHAR(255) DEFAULT 'admin123' NOT NULL;
--Delete a COLUMN
ALTER TABLE user1
drop column age;

ALTER TABLE user1
add column demon int;

--Change data type of a column 
ALTER TABLE user1
Alter column demon type TEXT;

--set default VALUE of a column
ALTER TABLE user1
  alter column country set DEFAULT 'bangladesh';


--remove default VALUE of a column
ALTER TABLE user1
  alter column country drop DEFAULT;

--Rename a COLUMN
ALTER TABLE user1
RENAME column demon to country;
--Add a constraint of COLUMN
ALTER TABLE user1
alter column country set not null;
--drop a constraint of COLUMN
ALTER TABLE user1
alter column country drop not null;

--add constraint 
 ALTER TABLE user1
ADD constraint unique_email UNIQUE(email);
--Delete a constraint 
ALTER TABLE user1
DROP constraint unique_email;

INSERT into user1 VALUES (4,'ashiq4', 'ask4@gmail.com');

TRUNCATE TABLE user1;
select * from user1;
