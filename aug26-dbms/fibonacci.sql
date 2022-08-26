DECLARE
F0 NUMBER := 0;
F1 NUMBER := 1;
N NUMBER := &NUMBERS;
T NUMBER;
BEGIN

DBMS_OUTPUT.PUT_LINE('Fibonnaci sequence:'||F0||' '||F1);
FOR I IN 2..N
LOOP
 T := F0+F1;
 DBMS_OUTPUT.PUT_LINE(T);
 F0 := F1;
 F1 := T;
END LOOP;
END;
/
