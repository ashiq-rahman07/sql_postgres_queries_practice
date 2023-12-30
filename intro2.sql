-- Active: 1703706762928@@127.0.0.1@5432@test2@public
CREATE TABLE IF NOT EXISTS departments(
  deptID SERIAL PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
  empID SERIAL PRIMARY KEY,
  name text NOT NULL,
  salary INTEGER NOT NULL,
  joining_date DATE NOT NULL,
  deptID INTEGER not null,
  CONSTRAINT fk_deptID
    FOREIGN KEY (deptID)
    REFERENCES departments(deptID)
);