CREATE TABLE Regions(
    region_id int NOT NULL PRIMARY KEY,
    region_name varchar(40)
);

CREATE TABLE Countries(
    country_id int NOT NULL PRIMARY KEY,
    country_name varchar(40),
    region_id int NOT NULL,
    CONSTRAINT FK_Country_Region FOREIGN KEY(country_id) REFERENCES Regions(region_id)
);

CREATE TABLE Locations(
    location_id int NOT NULL PRIMARY KEY,
    street_adress varchar(40),
    city varchar(40),
    postal_code varchar(40),
    state_province varchar(40),
    country_id int NOT NULL,
    CONSTRAINT FK_Location_Country FOREIGN KEY(location_id) REFERENCES Countries(country_id)
);

CREATE TABLE Jobs(
    job_id int NOT NULL PRIMARY KEY,
    job_title varchar(40),
    min_salary int,
    max_salary int
);

CREATE TABLE Departments(
    department_id int NOT NULL PRIMARY KEY,
    department_name varchar(40),
    manager_id int NOT NULL,
    location_id int NOT NULL -- CONSTRAINT FK_Manager_Department FOREIGN KEY(manager_id) REFERENCES Employees(employee_id),
    -- CONSTRAINT FK_Location_Department FOREIGN KEY(location_id) REFERENCES Locations(location_id)
);

CREATE TABLE Employees(
    employee_id int NOT NULL PRIMARY KEY,
    first_name varchar(40),
    last_name varchar(40),
    email varchar(40),
    phone_num varchar(40),
    hire_date Date,
    salary int,
    manager_id int,
    department_id int NOT NULL,
    job_id int NOT NULL,
    CONSTRAINT FK_Manager_Employee FOREIGN KEY(manager_id) REFERENCES Employees(employee_id),
    CONSTRAINT FK_Employee_Department FOREIGN KEY(department_id) REFERENCES Departments(department_id),
    CONSTRAINT FK_Employee_Job FOREIGN KEY(job_id) REFERENCES Jobs(job_id)
);

-- CREATE TABLE Departments(
--     CONSTRAINT FK_Manager_Department FOREIGN KEY(manager_id) REFERENCES Employees(employee_id),
--     CONSTRAINT FK_Location_Department FOREIGN KEY(location_id) REFERENCES Locations(location_id)
-- );
ALTER TABLE
    Departments
ADD
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id);

ALTER TABLE
    Departments
ADD
    FOREIGN KEY (location_id) REFERENCES Locations(location_id);

CREATE TABLE Job_history(
    start_date Date,
    end_date Date,
    job_id int NOT NULL,
    employee_id int NOT NULL,
    department_id int NOT NULL,
    CONSTRAINT FK_JobHistory_Employee FOREIGN KEY(employee_id) REFERENCES Employees(employee_id),
    CONSTRAINT FK_JobHistory_Department FOREIGN KEY(department_id) REFERENCES Departments(department_id),
    CONSTRAINT FK_JobHistory_Job FOREIGN KEY(job_id) REFERENCES Jobs(job_id)
);