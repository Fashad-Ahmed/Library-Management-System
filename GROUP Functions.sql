SELECT AVG(retail_price),MAX(retail_price),MIN(retail_price),MAX(retail_price) 
FROM publisher;

SELECT COUNT(DISTINCT branch_id) 
FROM book;

SELECT login_id,AVG(Password/2) 
FROM authentication_system 
GROUP BY login_id;

SELECT book_issued,name,reg_date 
FROM customer 
GROUP BY customer_id,branch_id;

SELECT book_issued,name,reg_date 
FROM customer 
GROUP BY customer_id,branch_id 
HAVING MAX(customer_id)>5;