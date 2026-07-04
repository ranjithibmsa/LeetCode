CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    /* Write your PL/SQL query statement below */
    select max(salary) into result from employee;

    if n>1 then
    FOR i IN 2..N LOOP
          select max(salary) into result from employee where salary<result;
    end loop;
    end if;

    if n<1 then
      result:=null;
    end if;
    RETURN result;
END;