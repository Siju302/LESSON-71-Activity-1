CREATE TABLE
IF NOT EXISTS STUDENT
(
    ROLL_NO TEXT PRIMARY KEY,
    NAME TEXT NOT NULL,
    ADDRESS TEXT,
    PHONE TEXT,
    AGE INTEGER
);

-- Insert sample data into the STUDENT table
INSERT INTO STUDENT
    (ROLL_NO, NAME, ADDRESS, PHONE, AGE)
VALUES
    ('1', 'TOMIWA', 'IKEJA', '*****', 16),
    ('2', 'NGOZI', 'GBAGADA', '*****', 15),
    ('3', 'HAUWA', 'LEKKI', '*****', 15),
    ('4', 'AHMAD', 'IKEJA', '*****', 16),
    ('5', 'TIRENI', 'GBAGADA', '*****', 18),
    ('6', 'FUNMI', 'LEKKI', '*****', 17);

-- Select all records from the STUDENT table
SELECT *
FROM STUDENT;

-- Select all records from the STUDENT table to verify insertion
SELECT *
FROM STUDENT;

--Query students who are 16 years old and live in Ikeja
SELECT *
FROM STUDENT
WHERE AGE = 16 AND ADDRESS = 'IKEJA';

-- Query students who are 18 years old and named TIRENI
SELECT *
FROM STUDENT
WHERE AGE = 18 AND NAME = 'TIRENI';

-- Query students named Funmi or Tireni
SELECT *
FROM STUDENT
WHERE NAME = 'FUNMI' OR NAME = 'TIRENI';

-- Query students named Ahmad or aged 15
SELECT *
FROM STUDENT
WHERE NAME = 'AHMAD' OR AGE = 15;

-- Query students aged 15 and named Hauwa or Ngozi
SELECT *
FROM STUDENT
WHERE AGE = 15 AND (NAME = 'HAUWA' OR NAME = 'NGOZI');
