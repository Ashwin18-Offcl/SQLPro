
-- Create Database
CREATE DATABASE student_db;

-- Use Database (MySQL)
USE student_db;

-- Create Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10)
);
