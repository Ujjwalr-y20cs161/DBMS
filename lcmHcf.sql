declare
num1 number := &num1;
num2 number := &num2;
lcm number;
hcf number;
mx number;
begin 
if num1 > num2 then 
	mx := num1;
else 	mx := num2;
end if;
while true loop
	if (mx mod num1 = 0 and mx mod num2 = 0 ) then
		lcm := mx;
		dbms_output.put_line('LCM : ' || lcm);
		exit;
	else 
		lcm := lcm + 1;
	end if;
end loop;
end;
/
