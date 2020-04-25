use college_management;

CREATE TABLE college (
  id INT NOT NULL AUTO_INCREMENT,
  college_uuid VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE(college_uuid)
);

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  department_uuid VARCHAR(255) NOT NULL,
  college_uuid VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE(department_uuid),
  FOREIGN KEY (college_uuid) REFERENCES college(college_uuid)
);

CREATE TABLE student (
  id INT NOT NULL AUTO_INCREMENT,
  student_id VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  department_uuid VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE(student_id),
  FOREIGN KEY (department_uuid) REFERENCES department(department_uuid)
);