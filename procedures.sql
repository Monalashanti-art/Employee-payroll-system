Delimiter $$
 CREATE PROCEDURE get_employee_salary(p_employee_id INT)
 BEGIN
 SELECT salary
 FROM all_hired
 WHERE employee_id = p_employee_id;
 END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE employee_by_department (p_department VARCHAR (50))
BEGIN
SELECT *
FROM all_hired
WHERE department = p_department;
END$$
DELIMITER ;


DELIMITER %%
CREATE PROCEDURE raise_salary(p_employee_id int, p_raise_percentage DECIMAL(5,2))
BEGIN
UPDATE all_hired
SET salary = salary + (salary * p_raise_percentage / 100)
WHERE employee_id = p_employee_id;
END%%
DELIMITER ;

