SELECT title,author_name AS AUTHOR 
FROM author 
WHERE LOWER(author_name) 
LIKE "%k%";

SELECT customer_id,CONCAT(book_issued,name) 
FROM customer 
WHERE branch_id 
BETWEEN 264 AND 266;

SELECT SUBSTR(title,1,5) 
FROM book 
WHERE branch_id > 264;

SELECT RPAD(Address,4,'_')||LPAD (branch_id,1,'_') 
FROM branch 
WHERE manager_id > 1;