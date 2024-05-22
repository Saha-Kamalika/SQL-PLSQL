/*loops*/
DECLARE
  i number(2);
BEGIN
  for i in 1..10 loop
    dbms_output.put_line('i: '||i);
  end loop;
END;

DECLARE
  i number(2):=1;
BEGIN
  while i<=10 loop
    dbms_output.put_line('i: '||i);
    i := i+1;
  end loop;
END;

DECLARE
  i number(2):=1;
BEGIN
  loop
    dbms_output.put_line('i: '||i);
    i := i+1;
    exit when i>10;
  end loop;
END;