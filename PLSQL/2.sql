/*conditional statements
IF THEN END IF
IF THEN ELSE END IF
IF THEN ELSIF ELSE END IF
CASE
*/
DECLARE
    sal NUMBER(10) := 20000;
    deptid NUMBER(3) :=105;
BEGIN
    if deptid = 105 THEN
        sal := sal+1000;
    elsif deptid = 106 THEN
        sal := sal+500;
    else sal := sal+100;
    end if;
    dbms_output.put_line('Salary: '|| sal || 'Dept Id: '|| deptid);
END;