DROP TABLE student_info;

CREATE TABLE student_info(
    name VARCHAR2(128) not null,
    phone VARCHAR2(128) not null,
    email VARCHAR2(128) not null,
    age NUMBER not null,
    fired CHAR(1) default 'N'
);

SELECT * FROM student_info;

INSERT INTO student_info
            (name, phone, email, age, fired)
VALUES ('±Ë≥≤»£', '01050303181', 'asdasd1478@naver.com', 28, 'N');
COMMIT;

SELECT * FROM student_info;

DROP TABLE department;

CREATE TABLE department(
    name VARCHAR(32) not null,
    location VARCHAR(32) not null
);

SELECT * FROM department;

INSERT INTO department (name, location) VALUES ('A', 'B');
INSERT INTO department (name, location) VALUES ('A', null);

COMMIT;

SELECT * FROM department;




DROP TABLE student_info;
CREATE TABLE student_info(
    name VARCHAR2(128) not null,
    phone VARCHAR2(128) not null,
    email VARCHAR2(128) not null,
    age  VARCHAR2(128) not null,
    fired CHAR(1) default 'N',
    department_id NUMBER
);
SELECT * FROM student_info;

INSERT INTO student_info(name, phone, email, age, department_id)
VALUES ('¡÷»£πŒ', '1234', 'adad@dsdf.com', 30, 1);

INSERT INTO student_info(name, phone, email, age, department_id)
VALUES ('¿Ã∫¥∞«', '1234', 'adad@dsdf.com', 30, 2);

INSERT INTO student_info(name, phone, email, age, department_id)
VALUES ('¡¸¿€∏«', '1234', 'adad@dsdf.com', 30, 2);

SELECT * FROM student_info;

DROP TABLE department;
CREATE TABLE department(
    id NUMBER NOT NULL,
    name VARCHAR2(128) NOT NULL,
    location VARCHAR2(128) NOT NULL
);

SELECT * FROM department;
INSERT INTO department(id, name, location) VALUES(1, 'devops', 'pangyo');
INSERT INTO department(id, name, location) VALUES(2, 'design', 'seoul');
INSERT INTO department(id, name, location) VALUES(3, 'frontdev', 'pangyo');
INSERT INTO department(id, name, location) VALUES(4, 'da', 'somewhere');

SELECT * FROM department;
SELECT * FROM student_info;

SELECT *
FROM student_info si, department d
WHERE si.department_id = d.id;

SELECT * FROM student_info si
JOIN department d
ON si.department_id = d.id;

CREATE TABLE residence(
 r_id VARCHAR2(128) null,
 r_name VARCHAR2(128) null,
 r_nation VARCHAR2(128) null
 );
SELECT * FROM residence;

INSERT INTO residence(id, name, nation) VALUES('ø≠¡§∏«','¡÷»£πŒ','∫Œ√µΩ√');
SELECT * FROM residence;

SELECT * FROM student_info si
JOIN department d ON si.department_id = d.id
JOIN residence r ON si.residence_id = r.id;


CREATE TABLE student_info2 (
name VARCHAR2(128) NOT NULL,
phone VARCHAR2(128) NOT NULL,
email VARCHAR2(128) NOT NULL,
age  VARCHAR2(128) NOT NULL,
fired Char(1) Default 'N',
department_id NUMBER,
residence_id NUMBER
);

CREATE TABLE residence(
r_id VARCHAR2(128) NOT NULL,
r_name VARCHAR2(128) NOT NULL,
r_nation VARCHAR2(128) NOT NULL
);

INSERT INTO residence(r_id, r_name,r_nation) values ('1','º≠øÔ','«—±π');
INSERT INTO residence(r_id, r_name,r_nation) values ('2','ªÛ«ÿ','¡ﬂ±π');
INSERT INTO residence(r_id, r_name,r_nation) values ('3','µµƒÏ','¿œ∫ª');

INSERT INTO student_info2(name,phone,email,age,fired,department_id,residence_id)
values ('±Ë¡æ±∏','1234','hey0507@naver.com',29,'Y',1,3);
INSERT INTO student_info2(name,phone,email,age,fired,department_id,residence_id)
values ('±Ë¡æ∆»','1234','hey0507@naver.com',39,'N',1,2);
INSERT INTO student_info2(name,phone,email,age,fired,department_id,residence_id)
values ('±Ë¡æƒ•','4321','hey3507@naver.com',49,'N',2,3);

SELECT * FROM student_info2 si, residence r WHERE si.residence_id = r.r_id;


DROP TABLE student_info;
CREATE TABLE student_info(
    name VARCHAR2(128) NOT NULL,
    phone VARCHAR2(128) NOT NULL,
    email VARCHAR2(128) NOT NULL,
    age NUMBER NOT NULL,
    fired CHAR(1) default 'N',
    department_id NUMBER,
    residence_id NUMBER
);

INSERT INTO student_info(name, phone, email, age, fired, department_id, residence_id)
VALUES('¡÷∆ﬁ', '123', 'ab', 11, 'N', 1, 2);

SELECT * FROM student_info;
SELECT * FROM department;
SELECT * FROM residence;
INSERT INTO residence(id, city, nation) VALUES (1, 'seoul', 'korea');
INSERT INTO residence(id, city, nation) VALUES (2, 'seattle', 'wa, US');
INSERT INTO residence(id, city, nation) VALUES (3, 'anchorage', 'al, US');

SELECT *
    FROM student_info si
        JOIN department d ON si.department_id = d.id
        JOIN residence r ON si.residence_id = r.id;

CREATE TABLE residence(
    id NUMBER NOT NULL,
    city VARCHAR2(128) NOT NULL,
    nation VARCHAR2(128) NOT NULL
);
