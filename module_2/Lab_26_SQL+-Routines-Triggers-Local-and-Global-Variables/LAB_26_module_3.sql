USE employees_mod;

DELIMITER $$ 
CREATE PROCEDURE get_avg_salary()
BEGIN
  SELECT AVG(salary) AS avg_salary FROM t_salaries
END

DELIMITER ;


$$ DELIMITER 
CREATE PROCEDURE emp_info(IN first_name VARCHAR(14), IN last_name VARCHAR(16), OUT emp_no INT)
BEGIN
SELECT emp_no INTO emp_no FROM employees WHERE first_name = first_name AND last_name = last_name
END;

DELIMITER ;

CALL get_avg_salary();

SET @emp_no = NULL;
CALL emp_info('John', 'Doe', @emp_no);
SELECT @emp_no;


CREATE FUNCTION get_latest_salary(first_name VARCHAR(14), last_name VARCHAR(16)) RETURNS DECIMAL(10,2)
$$ DELIMITER 
BEGIN
  DECLARE v_max_from_date DATE
  DECLARE v_salary DECIMAL(10,2)
  SELECT MAX(from_date) INTO v_max_from_date FROM salaries s JOIN employees e ON s.emp_no = e.emp_no WHERE e.first_name = first_name AND e.last_name = last_name;
  SELECT salary INTO v_salary FROM salaries WHERE emp_no = (SELECT emp_no FROM employees WHERE first_name = first_name AND last_name = last_name) AND from_date = v_max_from_date;
  RETURN v_salary
END
DELIMITER ;
$$ DELIMITER 
CREATE TRIGGER set_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
  IF NEW.hire_date > NOW() THEN
    SET NEW.hire_date = NOW()

END;
DELIMITER ; 

DROP INDEX i_hire_date ON t_employees;

CREATE INDEX i_hire_date ON t_employees (hire_date);

SELECT * FROM t_salaries WHERE salary > 89000;

CREATE INDEX i_salary ON t_salaries (salary);

SELECT 
    e.emp_no, e.first_name, e.last_name, 
    COALESCE(dm.dept_manager, 'Employee') AS emp_type
FROM 
    t_employees e
LEFT JOIN 
    (SELECT DISTINCT emp_no, 'Manager' AS dept_manager 
     FROM t_dept_manager) dm ON e.emp_no = dm.emp_no
WHERE 
    e.emp_no > 109990;





