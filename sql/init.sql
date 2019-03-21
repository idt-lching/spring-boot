DROP SCHEMA IF EXISTS spring_boot_example;

CREATE SCHEMA spring_boot_example;

DROP TABLE IF EXISTS spring_boot_example.employees;

CREATE TABLE spring_boot_example.employees (
    id BIGINT NOT NULL AUTO_INCREMENT,
    employee_no VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(employee_no)
);

INSERT INTO spring_boot_example.employees (employee_no, name, job_title) VALUES ('2019-001', 'John Doe', 'Java Developer 1');
INSERT INTO spring_boot_example.employees (employee_no, name, job_title) VALUES ('2019-002', 'Allan Tan', 'Managing Director');

DROP USER IF EXISTS 'spring-user'@'%';

CREATE USER 'spring-user'@'%' IDENTIFIED BY 'p4ssw0rd';

GRANT ALL PRIVILEGES ON spring_boot_example.* TO 'spring-user'@'%';

FLUSH PRIVILEGES;
