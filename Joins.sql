SELECT staff.name,staff.login_id,authentication_system.password 
FROM staff 
INNER JOIN authentication_system 
ON staff.login_id = authentication_system.login_id;

SELECT staff.name,authentication_system.password 
FROM staff 
LEFT JOIN authentication_system 
ON staff.login_id = authentication_system.login_id;

SELECT book.title,book.publisher_id,issue_status.staus 
FROM book 
RIGHT JOIN issue_status 
ON book.book_id = issue_status.book_id;

SELECT * 
FROM branch 
CROSS JOIN staff;