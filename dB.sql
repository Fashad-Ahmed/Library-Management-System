CREATE TABLE Branch
(
  manager_id INT NOT NULL,
  branch_id INT NOT NULL,
  Address VARCHAR(255) NOT NULL,
  PRIMARY KEY (branch_id)
);

CREATE TABLE Customer
(
  customer_id INT NOT NULL,
  book_issued VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  reg_date VARCHAR(255) NOT NULL,
  branch_id INT NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Authentication_system
(
  login_id INT NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (login_id)
);

CREATE TABLE Publisher
(
  publisher_id INT NOT NULL,
  category VARCHAR(255) NOT NULL,
  retail_price INT NOT NULL,
  publish_year INT NOT NULL,
  PRIMARY KEY (publisher_id)
);

CREATE TABLE Author
(
  title VARCHAR(255) NOT NULL,
  author_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (title)
);

CREATE TABLE Staff
(
  staff_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  salary INT NOT NULL,
  branch_id INT NOT NULL,
  login_id INT NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (staff_id),
  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
  FOREIGN KEY (login_id) REFERENCES Authentication_system(login_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Book
(
  book_id INT NOT NULL,
  branch_id INT NOT NULL,
  publisher_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
  FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id),
  FOREIGN KEY (title) REFERENCES Author(title)
);

CREATE TABLE updates
(
  login_id INT NOT NULL,
  book_id INT NOT NULL,
  PRIMARY KEY (login_id, book_id),
  FOREIGN KEY (login_id) REFERENCES Authentication_system(login_id),
  FOREIGN KEY (book_id) REFERENCES Book(book_id)
);

CREATE TABLE Issue_Status
(
  issue_id INT NOT NULL,
  issue_date VARCHAR(255) NOT NULL,
  staus VARCHAR(255) NOT NULL,
  customer_id INT NOT NULL,
  book_id INT NOT NULL,
  PRIMARY KEY (issue_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (book_id) REFERENCES Book(book_id)
);