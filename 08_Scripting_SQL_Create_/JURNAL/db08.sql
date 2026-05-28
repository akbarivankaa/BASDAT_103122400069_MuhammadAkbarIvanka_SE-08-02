CREATE TABLE department (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL,
    manager_id NUMBER,
    location_id NUMBER
);

CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100),
    salary NUMBER(10, 2),
    commission_pct NUMBER(4, 2),
    hire_date DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_emp_dept FOREIGN KEY (department_id) 
        REFERENCES department(department_id)
);

CREATE TABLE supplier (
    supplier_id NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(100) NOT NULL,
    contact_person VARCHAR2(50),
    phone VARCHAR2(20)
);

CREATE TABLE inventory (
    item_id NUMBER PRIMARY KEY,
    item_name VARCHAR2(100) NOT NULL,
    quantity NUMBER DEFAULT 0,
    price NUMBER(10, 2),
    supplier_id NUMBER,
    CONSTRAINT fk_inv_supplier FOREIGN KEY (supplier_id) 
        REFERENCES supplier(supplier_id)
);


-----------------------------------------------------------

ANALYZE TABLE department COMPUTE STATISTICS;
ANALYZE TABLE employee COMPUTE STATISTICS;
ANALYZE TABLE supplier COMPUTE STATISTICS;
ANALYZE TABLE inventory COMPUTE STATISTICS;

-------------------------------------------------------------

INSERT INTO department VALUES (10, 'Administration', 200, 1700);
INSERT INTO department VALUES (20, 'Marketing', 201, 1800);
INSERT INTO department VALUES (30, 'Purchasing', 114, 1700);
INSERT INTO department VALUES (40, 'Human Resources', 203, 2400);
INSERT INTO department VALUES (50, 'Shipping', 121, 1500);
INSERT INTO department VALUES (60, 'IT', 103, 1400);
INSERT INTO department VALUES (70, 'Public Relations', 204, 2700);
INSERT INTO department VALUES (80, 'Sales', 145, 2500); -- soal No. 5
INSERT INTO department VALUES (90, 'Executive', 100, 1700);
INSERT INTO department VALUES (100, 'Finance', 108, 1700);

INSERT INTO employee VALUES (101, 'Smith', 'smith@mail.com', 4000, NULL, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 20);
INSERT INTO employee VALUES (102, 'Johnson', 'johnson@mail.com', 5500, NULL, TO_DATE('2022-03-22', 'YYYY-MM-DD'), 60);
INSERT INTO employee VALUES (103, 'Williams', 'williams@mail.com', 8000, 0.15, TO_DATE('2021-07-01', 'YYYY-MM-DD'), 80); -- Dept 80
INSERT INTO employee VALUES (104, 'Jones', 'jones@mail.com', 4500, NULL, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 50);
INSERT INTO employee VALUES (105, 'Brown', 'brown@mail.com', 7500, 0.20, TO_DATE('2020-11-18', 'YYYY-MM-DD'), 80); -- Dept 80
INSERT INTO employee VALUES (106, 'Davis', 'davis@mail.com', 6000, NULL, TO_DATE('2022-09-05', 'YYYY-MM-DD'), 90);
INSERT INTO employee VALUES (107, 'Miller', 'miller@mail.com', 7200, 0.10, TO_DATE('2021-02-28', 'YYYY-MM-DD'), 80); -- Dept 80
INSERT INTO employee VALUES (108, 'Wilson', 'wilson@mail.com', 4200, NULL, TO_DATE('2023-08-14', 'YYYY-MM-DD'), 30);
INSERT INTO employee VALUES (109, 'Moore', 'moore@mail.com', 5100, NULL, TO_DATE('2022-12-01', 'YYYY-MM-DD'), 100);
INSERT INTO employee VALUES (110, 'Taylor', 'taylor@mail.com', 7800, 0.25, TO_DATE('2019-04-10', 'YYYY-MM-DD'), 80); -- Dept 80

COMMIT;

-------------------------------------------------------------------------------------------------------------------------

CREATE VIEW empvu80 AS
SELECT 
    employee_id AS id_number, 
    last_name AS name, 
    salary, 
    department_id
FROM 
    employee
WHERE 
    department_id = 80;
    
---------------------------------------------------------------------------------------------------------------------------------

DESCRIBE empvu80;

CREATE INDEX emp_department_idx ON employee (department_id);

SELECT * FROM department;
SELECT * FROM employee;