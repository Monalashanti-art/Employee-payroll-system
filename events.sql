DELIMITER $$
CREATE EVENT lesser_salary
	ON SCHEDULE EVERY 1 DAY
    DO
BEGIN
UPDATE all_hired
SET department = 'Review'
WHERE salary < 30000;
END$$
DELIMITER ;

DELIMITER %%
CREATE EVENT department_report
	ON SCHEDULE EVERY 30 DAY
    DO
    BEGIN
    INSERT INTO depertment_report (department, total_salary, avg_salary, employee_count, report_date
    )
    (SELECT department, sum(salary), avg(salary), count(employee_id), NOW()
    FROM all_hired
    GROUP BY department);
    END%%
    DELIMITER ;
