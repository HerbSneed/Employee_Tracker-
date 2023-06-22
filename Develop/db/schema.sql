DROP DATABASE IF EXISTS employeeTracker_db;
CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department INT,
  FOREIGN KEY (department) 
  REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee_tracker (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL, 
  manager_id INT,
  FOREIGN KEY (manager_id) REFERENCES employee_tracker(id) ON DELETE SET NULL
);


-- SHOW --


