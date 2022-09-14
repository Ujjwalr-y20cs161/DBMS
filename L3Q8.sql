declare
deptno number := &dno;
rowss number;
begin
delete from empp where dno = deptno;
if sql%notfound then
   dbms_output.put_line('No rows deleted');
elsif sql%found then
   rowss := sql%rowcount;
   insert into del_hist values(deptno,rowss,sysdate);
end if;
end;

               DNO ROWS_DELETED DAT
        ---------- ------------ ---------
                 2            7 14-SEP-22
