DECLARE
    num NUMBER(1) := &weekday;
    dayname VARCHAR2(10);
BEGIN
    dayname := Case num
            WHEN 1 then 'Monday'
            WHEN 2 then 'Tuesday'
            WHEN 3 then 'Wednesday'
            WHEN 4 then 'Thursday'
            WHEN 5 then 'Fridday'
            WHEN 6 then 'Saturday'
            else 'Sunday'
    END;
    dbms_output.put_line(dayname);
END;