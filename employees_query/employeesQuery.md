Employees Query
In a SQL db, you have two tables, an employees table and a departments table. Employees belong to only one department. Write a SQL query that returns the number of employees per department.

Clarifications:

Column names are not important, just agree on something semantic
Follow-up questions:

What happens if a department has no employees?
Why do we need a LEFT OUTER JOIN?

SELECT
  department.name, COUNT(employees.id) as num_employees
FROM
  departments d
LEFT OUTER JOIN
  employees e ON e.department_id = d.id
GROUP BY
  department.id
