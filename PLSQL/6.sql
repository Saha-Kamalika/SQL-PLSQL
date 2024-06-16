declare
  cnt number(2);
begin
  update Employees set salary :=salary+20 where dep_id =20;
  cnt :=SQL%RowCount;   --implicit cursor
  dbms_output.put_line(cnt);
end;
