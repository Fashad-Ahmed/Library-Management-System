 CREATE 
 USER 'Fashad'@'localhost' 
 IDENTIFIED BY 'AminoAcid';
 
 select Host,user 
 from mysql.user;
 
 GRANT All ON librarysystem.* 
 TO 'Fashad'@'localhost' 
 WITH GRANT OPTION;

SELECT book.title,book.publisher_id,issue_status.staus 
FROM librarysystem.book 
RIGHT JOIN librarysystem.issue_status 
ON book.book_id = issue_status.book_id;

CREATE ROLE Owner;

GRANT ALL ON librarysystem.* 
TO Owner;

GRANT Owner to 'Fashad'@'localhost';