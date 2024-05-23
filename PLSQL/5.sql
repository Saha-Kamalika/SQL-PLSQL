CREATE OR REPLACE PROCEDURE insert_employee (
    p_employee_id IN employees.employee_id%TYPE,
    p_first_name  IN employees.first_name%TYPE,
    p_last_name   IN employees.last_name%TYPE,
    p_hire_date   IN employees.hire_date%TYPE
) IS
BEGIN
    INSERT INTO employees (employee_id, first_name, last_name, hire_date)
    VALUES (p_employee_id, p_first_name, p_last_name, p_hire_date);
    
    DBMS_OUTPUT.PUT_LINE('Employee inserted successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END insert_employee;
BEGIN
    insert_employee(1, 'Kam', 'Saha', TO_DATE('2024-05-23', 'YYYY-MM-DD'));
END;

