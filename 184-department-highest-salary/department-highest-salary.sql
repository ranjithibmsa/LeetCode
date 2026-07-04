/* Write your PL/SQL query statement below */
select b.name department,a.name employee, a.salary 
from employee a, department b
where a.departmentid=b.id
 and a.salary = (select max(c.salary) from employee c where a.departmentid=c.departmentid)