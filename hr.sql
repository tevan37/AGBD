SELECT first_name, last_name, salary FROM employees
WHERE salary < 6000

SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e 
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id

SELECT e.first_name AS NombreEmpleado, m.first_name AS NombreJefe FROM employees m 
JOIN employees e on m.employee_id = e.manager_id
ORDER BY NombreJefe ASC

SELECT e.first_name AS NombreEmpleado, e.last_name AS ApellidoEmpleado, de.first_name AS NombreHijo FROM employees e 
JOIN dependents de ON e.employee_id = de.employee_id
ORDER BY NombreHijo ASC

SELECT e.first_name, e.last_name, j.job_title, j.max_salary FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.max_salary DESC

SELECT e.first_name, d.department_name, e.salary FROM employees e 
JOIN departments d ON e.department_id = d.department_id
ORDER BY e.first_name, d.department_name ASC