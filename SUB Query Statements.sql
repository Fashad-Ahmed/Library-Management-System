SELECT * 
FROM publisher 
WHERE publish_year 
IN (
SELECT publish_year 
FROM publisher 
WHERE retail_price > 500
);

SELECT book_issued,name,reg_date 
FROM customer 
GROUP BY customer_id 
HAVING customer_id >= ( 
SELECT MIN(customer_id) 
FROM customer 
WHERE customer_id> 4
);

SELECT * 
FROM publisher 
WHERE publish_year IN (
SELECT publish_year 
FROM publisher 
WHERE publish_year BETWEEN 1990 AND 2010
);

SELECT * 
FROM publisher 
WHERE publish_year 
IN (
SELECT publish_year 
FROM publisher 
WHERE publish_year > 2000
);

SELECT * 
FROM updates 
WHERE login_id 
IN (
SELECT login_id 
FROM updates 
WHERE login_id > 2
);

SELECT * 
FROM branch 
WHERE branch_id 
IN (
SELECT branch_id 
FROM branch 
WHERE branch_id=265
);