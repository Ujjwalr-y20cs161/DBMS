
create or replace procedure raise_salary(empid in number,incr in number) as
undef_sal exception;
cur_sal number
Begin
select sal into cur_sal from emp where id = empid; 
if (cur_sal = NULL) then	raise undef_sal;
else	update emp set sal = cur_sal + incr where id = empid;
end if;
dbms_output.put_line('End of the Procedure');
Exception when undef_sal then dbms_output.put_line('Salary is undefined'); 
update emp set salary = 0 when id = empid;
end;/
