-- Active: 1663945334496@@127.0.0.1@3306@employees
SELECT * FROM departments;
SELECT * FROM employees
JOIN dept_manager USING(emp_no);

SELECT * FROM titles WHERE emp_no=110765;

SELECT count(*) FROM titles WHERE title='Manager';

SELECT * FROM dept_manager;