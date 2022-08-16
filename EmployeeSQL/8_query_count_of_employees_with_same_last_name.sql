--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT 
    count(last_name)
    ,last_name 
FROM employees
GROUP BY last_name 
ORDER BY last_name DESC;
