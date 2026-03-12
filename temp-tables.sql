CREATE TEMPORARY TABLE top_salaries
 (SELECT * , DENSE_RANK () OVER (PARTITION BY department ORDER BY salary DESC) top_sal
 FROM all_hired
 );
 SELECT *
 FROM top_salaries
 WHERE top_sal <= 3;
