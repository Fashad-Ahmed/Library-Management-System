USE librarysytem;

SELECT * 
FROM authentication_system;

DESC author;

SELECT title, author_name AS Author 
FROM author;

SELECT * FROM book; 
SELECT * FROM author;
SELECT * FROM branch;
SELECT * FROM customer;
SELECT * FROM issue_status;
SELECT * FROM publisher;
SELECT * FROM staff;

SELECT book_id AS "BOOK ID",publisher_id AS "PUBLISHER ID",title ||'has Book ID='|| book_id AS "DESCRIPTION" 
FROM book;

SELECT customer_id, book_issued AS "BOOK",name AS "CUSTOMER", address 
FROM customer;      