# Employee-payroll-system
SQL Employee &amp; Payroll Management System

Project Overview

This project is a relational database system designed to manage employee payroll operations using MySQL.
It demonstrates advanced SQL concepts including stored procedures, triggers, scheduled events, window functions, and analytical queries.

The system automates salary updates, maintains audit logs, backs up deleted employees, and generates department payroll reports.

Technologies Used
- MySQL
- SQL Stored Procedures
- Triggers
- Events Scheduler
- Window Functions
- Common Table Expressions (CTEs)
- Temporary Tables

Database Features
-Employee Management
- Stores employee details and salary information
Department-based organization
- Salary Automation
- Stored procedure to raise employee salaries
- Parameterized queries for department filtering
 Audit Logging
- Trigger records salary changes automatically
- Tracks old vs new salary with timestamps
 Data Backup
- BEFORE DELETE trigger copies removed employees into a backup table
Automated Reporting
- Scheduled events generate department salary summaries
 Analytical Queries
- Salary ranking within departments
-Employees earning above department average
- Running payroll totals

 Database Schema
Main Tables:
- all_hired
- salary_logg
- department_report
- deleted_employees

Example Queries
- Top earners per department

SELECT *,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank
FROM all_hired;

 Skills Demonstrated
- Database design
- Automation using triggers
- Event scheduling
- Analytical SQL
- Payroll auditing systems

Author
- Mona Matlawe
-  Aspiring Data Engineer | SQL | Data Analytics
