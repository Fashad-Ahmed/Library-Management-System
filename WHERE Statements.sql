SELECT book_issued AS "Book", name AS "Customer", address 
FROM customer 
WHERE (branch_id=265 OR branch_id=266) AND address LIKE "%BL%";

SELECT category,publisher_id AS "ID",publish_year AS "YEAR" 
FROM publisher 
WHERE retail_price > 800;

SELECT book_id,issue_id,staus 
FROM issue_status 
WHERE staus 
LIKE "_e%";

SELECT name AS EMPLOYEES,branch_id AS BRANCH 
FROM staff 
WHERE salary BETWEEN 2500 AND 5500;

SELECT title,author_name AS AUTHOR 
FROM author 
WHERE title 
LIKE "%s%";