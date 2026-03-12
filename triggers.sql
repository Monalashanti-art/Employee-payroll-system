DELIMITER %%
CREATE TRIGGER updated_salary
	AFTER UPDATE ON all_hired
    FOR EACH ROW
BEGIN
INSERT INTO salary_logg (employee_id, old_salary, new_salary,change_date)
VALUES (OLD.employee_id, OLD.salary,NEW.salary,NOW());
END%%
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updated_salary
	AFTER UPDATE ON all_hired
	FOR EACH ROW
BEGIN
IF OLD.salary <> NEW.salary THEN
INSERT INTO salary_logg (employee_id, old_salary, new_salary,change_date)
VALUES (OLD.employee_id, OLD.salary, NEW.salary, NOW());
END IF;
END$$
DELIMITER ;

-- example to test trigger --
UPDATE all_hired
SET salary = salary + 1000
WHERE employee_id = 3;

DELIMITER %%
CREATE TRIGGER back_up
BEFORE DELETE ON all_hired
FOR EACH ROW
BEGIN
INSERT INTO deleted_employees (employee_id,first_name, last_name, department, salary, hire_date)
VALUES (OLD.employee_id, OLD.first_name, OLD.last_name, OLD.department, OLD.salary, OLD.hire_date);
END%%
DELIMITER ;
