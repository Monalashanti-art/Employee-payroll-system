SELECT *,
(RANK () OVER (PARTITION BY department ORDER BY salary) ) as rnk
FROM all_hired ;

WITH average_salary as
(
SELECT *,
	AVG(salary) OVER (PARTITION BY department) avg_salary
    FROM all_hired
)
SELECT *
FROM average_salary;

WITH higher_salaries as
(SELECT *, 
	AVG(salary) OVER (PARTITION BY department)avg_salary
    FROM all_hired
    )
SELECT *
FROM higher_salaries
WHERE salary > avg_salary;

WITH total_salaries as
(Select *,
	SUM(salary) OVER (ORDER BY hire_date) total_sal
    FROM all_hired
)
SELECT *
FROM total_salaries;
