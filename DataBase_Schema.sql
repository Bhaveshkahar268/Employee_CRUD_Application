CREATE DATABASE EMPLOYEE_DATA;

CREATE TABLE `employee` (
  `emp_id` char(10) NOT NULL,
  `name` char(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `city_code` int NOT NULL,
  `gender` char(1) NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `city_code` (`city_code`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`city_code`) REFERENCES `city` (`code`)
);

CREATE DATABASE IF NOT EXISTS EMPLOYEE_DATA;

USE EMPLOYEE_DATA;

-- =========================
-- STATE TABLE
-- =========================

DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS state;

CREATE TABLE state (
    code INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(35) NOT NULL UNIQUE
);

-- =========================
-- CITY TABLE
-- =========================

CREATE TABLE city (
    code INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(35) NOT NULL UNIQUE,
    state_code INT NOT NULL,
    
    CONSTRAINT fk_state
    FOREIGN KEY (state_code)
    REFERENCES state(code)
);

-- =========================
-- EMPLOYEE TABLE
-- =========================

CREATE TABLE employee (
    emp_id CHAR(10) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    city_code INT NOT NULL,
    gender CHAR(1) NOT NULL,
    salary INT NOT NULL,

    CONSTRAINT fk_city
    FOREIGN KEY (city_code)
    REFERENCES city(code)
);

-- =========================
-- INSERT STATE DATA
-- =========================

INSERT INTO state (code, name) VALUES
(1, 'Madhya Pradesh'),
(2, 'Maharashtra');

-- =========================
-- INSERT CITY DATA
-- =========================

INSERT INTO city (code, name, state_code) VALUES
(1, 'Ujjain', 1),
(2, 'Indore', 1),
(3, 'Mumbai', 2),
(4, 'Pune', 2),
(5, 'Satara', 2);

-- =========================
-- SAMPLE QUERY
-- =========================
-- SELECT * FROM state;
-- SELECT * FROM city;
-- SELECT * FROM employee;
