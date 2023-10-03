USE reliance ;

SELECT * FROM employee_data ;
ALTER TABLE employee_data ADD column LOCATION varchar(25) ;

/*1. Display all information in the tables EMP and DEPT*/
SELECT * FROM employee_data ;

/*2. Display only the hire date and employee name for each employee. */

select FIRST_NAME , JOINING_DATE from employee_data  ;

/*3. Display the ename concatenated with the job ID, separated by a comma and space, and
name the column Employee and Title*/

select concat(FIRST_NAME,' , ',DEPARTMENT) as ' Employee_and_Title ' from  employee_data  ;

/*4. Display the hire date, name and department number for all clerks*/

SELECT JOINING_DATE,FIRST_NAME,DEPARTMENT_ID FROM employee_data  ;

/*5. Create a query to display all the data from the EMP table. Separate each column by a
comma. Name the column THE OUTPUT */

select employee_data.* , ' , ' as "the_output" from employee_data ;

/*6. Display the names and salaries of all employees with a salary greater than 2000. */

select FIRST_NAME,SALARY from employee_data  where SALARY > 100000 ;

/*7. Display the names and dates of employees with the column headers "Name" and "Start
Date" */

select FIRST_NAME as Name ,
       JOINING_DATE as Start_Date from employee_data ;
       
/*8. Display the names and hire dates of all employees in the order they were hired. */    

select FIRST_NAME , JOINING_DATE from employee_data order by JOINING_DATE ASC ;   

/*9. Display the names and salaries of all employees in reverse salary order. */

select  FIRST_NAME, SALARY from employee_data order by SALARY desc ;

/*10. Display 'ename" and "deptno" who are all earned commission and display salary in
reverse order. */

select FIRST_NAME,DEPARTMENT_ID from employee_data WHERE COMMISION IS NOT NULL
ORDER BY salary DESC;

/*11. Display the last name and job title of all employees who do not have a manager*/

SELECT LAST_NAME, DEPARTMENT
FROM employee_data WHERE MANAGER_ID IS NULL;

/*12. Display the last name, job, and salary for all employees whose job is sales representative
or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000 */

SELECT LAST_NAME, DEPARTMENT , SALARY
FROM employee_data
WHERE (DEPARTMENT = 'Account Executive' OR DEPARTMENT = 'Developer III')
AND (SALARY NOT IN (25000, 35000, 100000) );

/*PART 2*/

/*1) Display the maximum, minimum and average salary and commission earned. */

SELECT 
    MAX(SALARY) AS max_salary,
    MIN(SALARY) AS min_salary,
    AVG(SALARY) AS avg_salary,
    MAX(COMMISION) AS max_COMMISION,
    MIN(COMMISION) AS min_COMMISION,
    AVG(COMMISION) AS avg_COMMISION
FROM employee_data ;

/*2) Display the department number, total salary payout and total commission payout for
each department*/

select DEPARTMENT_ID ,
sum(SALARY) as total_salary_payout ,
sum(COMMISION) as total_commission_payout 
from employee_data
group by DEPARTMENT_ID ;

/*3) Display the department number and number of employees in each department.*/

select DEPARTMENT_ID , count(EMPLOYEE_ID) as num_employees from  employee_data
group by DEPARTMENT_ID ;

/*4) Display the department number and total salary of employees in each department. */

select DEPARTMENT_ID , sum(SALARY) as total_salary from  employee_data
group by DEPARTMENT_ID ;

/*5) Display the employee's name who doesn't earn a commission. Order the result set
without using the column name */

select * from employee_data where COMMISION is null order by 2 ;

/*6) Display the employees name, department id and commission. If an Employee doesn't
earn the commission, then display as 'No commission'. Name the columns appropriately*/

select FIRST_NAME,DEPARTMENT_ID,COMMISION ,
case 
when COMMISION is null then 'No Commission'
else 'commission' 
end as COMMISION
from employee_data  ;

/* 7) Display the employee's name, salary and commission multiplied by 2. If an Employee
doesn't earn the commission, then display as 'No commission. Name the columns
appropriately*/

SELECT FIRST_NAME,SALARY ,
CASE 
WHEN COMMISION IS NOT NULL THEN COMMISION * 2 
ELSE 'No Commission'
END AS COMMEN 
FROM employee_data ;

/*8) Display the employee's name, department id who have the first name same as another
employee in the same department */

SELECT FIRST_NAME,EMPLOYEE_ID FROM  employee_data
WHERE FIRST_NAME=FIRST_NAME AND EMPLOYEE_ID=EMPLOYEE_ID
ORDER BY DEPARTMENT_ID,FIRST_NAME ;
 

/*9) Display the sum of salaries of the employees working under each Manager.*/

SELECT MANAGER_ID,SUM(SALARY) AS TOTAL_SALARY
FROM employee_data group by MANAGER_ID ;

/*10) Select the Managers name, the count of employees working under and the department
ID of the manager. */

SELECT MANAGER_ID,count(EMPLOYEE_ID)
AS EMPLOYEE_COUNT ,DEPARTMENT_ID FROM employee_data
GROUP BY DEPARTMENT_ID,MANAGER_ID ;

/*11) Select the employee name, department id, and the salary. Group the result with the
manager name and the employee last name should have second letter 'a! */

SELECT FIRST_NAME,DEPARTMENT_ID,SALARY
FROM  employee_data WHERE LAST_NAME LIKE 'A%' ;

/*12) Display the average of sum of the salaries and group the result with the department id.
Order the result with the department id. */

SELECT DEPARTMENT_ID ,avg(SALARY) AS AVG_SALARY
FROM employee_data GROUP BY DEPARTMENT_ID ORDER BY DEPARTMENT_ID ;

/*13) Select the maximum salary of each department along with the department id */

SELECT DEPARTMENT_ID ,MAX(SALARY) AS MAX_SALARY 
FROM  employee_data group by DEPARTMENT_ID ;

/*14) Display the commission, if not null display 10% of salary, if null display a default value 1*/

SELECT EMPLOYEE_ID ,
CASE
WHEN COMMISION IS NOT NULL THEN SALARY * 0.10
ELSE  1
END AS  COMMISION_SHOW 
FROM employee_data ORDER BY EMPLOYEE_ID ;


/*part 4*/

/*1. Write a query to display the last name, department number, department name for all
employees. */

SELECT LAST_NAME,DEPARTMENT_ID,DEPARTMENT FROM employee_data ;

/*2. Create a unique list of all jobs that are in department 4. Include the location of the
department in the output. */

SELECT DISTINCT COMPANY,DEPARTMENT,LOCATION FROM employee_data WHERE DEPARTMENT_ID=50  ;

/*3. Write a query to display the employee last name,department name,location id and city of
all employees who earn commission*/
 
SELECT LAST_NAME,DEPARTMENT,COMPANY,LOCATION
FROM employee_data WHERE COMMISION ORDER BY SALARY ;

/*4. Display the employee last name and department name of all employees who have an 'a'
in their last name */
 
SELECT LAST_NAME,OCCUPATION FROM employee_data WHERE LAST_NAME LIKE "A%" ;

/*5. Write a query to display the last name,job,department number and department name for
all employees who work in ATLANTA. */

SELECT LAST_NAME,DEPARTMENT,DEPARTMENT_ID
FROM  employee_data WHERE LOCATION='SURAT';

/*6. Display the employee last name and employee number along with their manager's last
name and manager number. */

SELECT EMPLOYEE_ID,LAST_NAME,MANAGER_ID
FROM employee_data
where  EMPLOYEE_ID = MANAGER_ID 
order by MANAGER_ID  ;

/*7. Display the employee last name and employee number along with their manager's last
name and manager number (including the employees who have no manager). */

SELECT E.FIRST_NAME AS "Employee Name",
M.FIRST_NAME AS "Manager"
FROM employee_data E
LEFT OUTER JOIN employee_data M
ON E.MANAGER_ID = M.EMPLOYEE_ID ;

/*8. Create a query that displays employees last name,department number,and all the
employees who work in the same department as a given employee. */

SELECT LAST_NAME,DEPARTMENT_ID,DEPARTMENT 
FROM employee_data ORDER BY DEPARTMENT ;

/*9. Create a query that displays the name,job,department name,salary,grade for all
employees. Derive grade based on salary(>=50000=A, >=30000=B,<30000=C) */

SELECT FIRST_NAME,DEPARTMENT,SALARY ,
CASE
WHEN SALARY > 100000 THEN 'A'
WHEN SALARY >50000 THEN 'B'
WHEN SALARY <50000 THEN 'C'
END AS SALARY_GRADE 
FROM employee_data ;

/*10. Display the names and hire date for all employees who were hired before their
managers along withe their manager names and hire date. Label the columns as Employee
name, emp_hire_date,manager name,man_hire_date*/


/*PART 3*/

/*1. Write a query that displays the employee's last names only from the string's 2-5th
position with the first letter capitalized and all other letters lowercase, Give each column an
appropriate label. */


/*2. Write a query that displays the employee's first name and last name along with a " in
between for e.g.: first name : Ram; last name : Kumar then Ram-Kumar. Also displays the
month on which the employee has joined.*/

SELECT CONCAT(FIRST_NAME,'-',LAST_NAME) AS FULL_NAME ,	
MONTH(JOINING_DATE) AS JOIN_MONTH
FROM employee_data;


/*3. Write a query to display the employee's last name and if half of the salary is greater than
ten thousand then increase the salary by 10% else by 11.5% along with the bonus amount of
1500 each. Provide each column an appropriate label. */

SELECT LAST_NAME,
CASE
WHEN SALARY * 0.5 > 80000 THEN SALARY *1.1
ELSE  SALARY * 1.115
END AS "NEW SALARY", 15000 AS "BONUS AMOUNT"
FROM employee_data ;

/*4. Display the employee ID by Appending two zeros after 2nd digit and 'E' in the end,
department id, salary and the manager name all in Upper case, if the Manager name
consists of 'z' replace it with '$! */

SELECT 
    CONCAT(
        SUBSTRING(EMPLOYEE_ID, 1, 2), 
        '00',                          
        SUBSTRING(EMPLOYEE_ID, 3),     
        'E'                           
    ) AS modified_employee_id,
    UPPER(DEPARTMENT_ID) AS modified_department_id,
    SALARY,
    REPLACE(UPPER(FIRST_NAME), 'Z', '$!') AS modified_manager_name
FROM
    employee_data;
    
/*5. Write a query that displays the employee's last names with the first letter capitalized and
all other letters lowercase, and the length of the names, for all employees whose name
starts with J, A, or M. Give each column an appropriate label. Sort the results by the
employees' last names */  

SELECT LAST_NAME "NAME" ,
length(LAST_NAME) "LENGTH" 
FROM employee_data
WHERE LAST_NAME LIKE 'J%'
OR LAST_NAME LIKE 'A%'
OR LAST_NAME LIKE 'M%'
ORDER BY LAST_NAME ;

/*6. Create a query to display the last name and salary for all employees. Format the salary to
be 15 characters long, left-padded with $. Label the column SALARY */

SELECT LAST_NAME ,
lpad(SALARY,15,'$') SALARY
FROM employee_data ;
      
/*7. Display the employee's name if it is a palindrome*/      

SELECT FIRST_NAME
FROM employee_data
WHERE FIRST_NAME = reverse(FIRST_NAME) ;

/*8. Display First names of all employees with initcaps. */

SELECT CONCAT(UPPER(SUBSTRING(FIRST_NAME, 1, 1)), 
LOWER(SUBSTRING(FIRST_NAME, 2)))
AS initcaps_first_name
FROM employee_data ;

/*9. From LOCATIONS table, extract the word between first and second space from the
STREET ADDRESS column. */

SELECT First_Name, substring(first_name,1,15), last_name FROM employee_data ;

/*10. Extract first letter from First Name column and append it with the Last Name. Also add
"@systechusa.com" at the end. Name the column as e-mail address. All characters should
be in lower case. Display this along with their First Name. */

SELECT
    CONCAT(
        LOWER(LEFT(FIRST_NAME, 1)), 
        LOWER(LAST_NAME),
        '@systechusa.com'
    ) AS 'e-mail address' ,
    FIRST_NAME
FROM
  employee_data  ;
  
/*11. Display the names and job titles of all employees with the same job as Trenna.*/
  
SELECT FIRST_NAME, DEPARTMENT
FROM employee_data 
WHERE DEPARTMENT = (SELECT DEPARTMENT FROM employee_data WHERE FIRST_NAME = 'MEET');
  
  