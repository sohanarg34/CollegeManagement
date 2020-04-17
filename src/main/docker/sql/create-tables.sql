use college_management;

CREATE TABLE college (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE department (
  college_id INT NOT NULL,
  department_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (department_id),
  FOREIGN KEY (college_id) REFERENCES college(id)
);

CREATE TABLE student (
  student_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (student_id),
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);