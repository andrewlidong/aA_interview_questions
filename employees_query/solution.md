# Employees Query

```sql
SELECT
    department.name, COUNT(employees.id) as num_employees
FROM
    departments d
LEFT OUTER JOIN
    employees e ON e.department_id = d.id
GROUP BY
    department.id
```