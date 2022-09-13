 DECLARE
num1 number := &NUM;
f number := 1;
f2 number:= 0;
--i number := 0;
num number;
BEGIN
 dbms_output.put_line(f2||' '||f);
 for i in 0..num1
 LOOP
 num := f+f2;
 dbms_output.put_line(num);
 f2 := f;
 f := num;
 END LOOP;
END;
/
