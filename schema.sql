CREATE TABLE all_hired ( employee_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50), 
 last_name VARCHAR(50), 
 department VARCHAR(50), 
 salary DECIMAL (10,2), 
 hire_date DATE ); 
 
 CREATE TABLE salary_logg 
 ( log_id INT PRIMARY KEY AUTO_INCREMENT, 
 employee_id INT, 
 old_salary DECIMAL(10,2),
 new_salary DECIMAL(10,2), 
 change_date DATETIME ); 
 
 CREATE TABLE department_report
 ( department VARCHAR(50), 
 total_salary DECIMAL(12,2), 
 avg_salary DECIMAL(12,2), 
 employee_count INT, 
 report_date DATE ); 
 

CREATE TABLE deleted_employees
LIKE all_hired;
