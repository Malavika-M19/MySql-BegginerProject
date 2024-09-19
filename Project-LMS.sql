/*
LIBRARY MANAGEMENT SYSTEM
 This contains the queries for a library management system. It keeps track of all information about books in the library, their cost
 status and total number of books in the library
 */
 
 -- Create database
 CREATE DATABASE library;
 USE library;
 
 -- Creat table- branch
 CREATE TABLE branch(
 branch_no INT PRIMARY KEY,
 manager_id INT,
 branch_address VARCHAR(200),
 contact_no VARCHAR(15)
 );
 
 -- Create table Employee
 CREATE TABLE employee(
 emp_id INT PRIMARY KEY,
 emp_name VARCHAR(50),
 position VARCHAR(50),
 salary INT,
 branch_no INT,
 FOREIGN KEY (branch_no) REFERENCES branch(branch_no)
 );
 
 -- Create table- books
 CREATE TABLE books(
 ISBN VARCHAR(20) PRIMARY KEY,
 book_title VARCHAR(100),
 category VARCHAR(50),
 rental_price DECIMAL(5,2),
 status VARCHAR(5),
 author VARCHAR(50),
 publisher VARCHAR(50)
 );
 
 -- Create table- customer
 CREATE TABLE customer(
 customer_id INT PRIMARY KEY,
 customer_name VARCHAR(50),
 customer_address VARCHAR(200),
 reg_date DATE
 );
 
 -- Create table- issue status
 CREATE TABLE issueStatus(
 issue_id INT PRIMARY KEY,
 issued_cust INT,
 issued_book_name VARCHAR(100),
 issue_date DATE,
 isbn_book VARCHAR(20),
 FOREIGN KEY (issued_cust) REFERENCES customer(customer_id),
 FOREIGN KEY (isbn_book) REFERENCES books(isbn)
 );
 
 -- Create table - return status
 CREATE TABLE returnStatus(
 return_id INT PRIMARY KEY,
 return_cust VARCHAR(50),
 return_book_name VARCHAR(100),
 return_date DATE,
 isbn_book2 VARCHAR(20),
 FOREIGN KEY (isbn_book2) REFERENCES books(isbn)
 );
 
 -- Add data into table- branch
 INSERT INTO branch (branch_no, manager_id,branch_address,contact_no) VALUES
 (1, 10,'Trivandrum','8494946778'),
 (2, 11, 'Kollam', '8494946777'),
 (3, 12, 'Alappuzha', '8494946776'),
 (4, 13, 'Ernakulam', '8494946775'),
 (5, 14, 'Kottayam', '8494946774'),
 (6, 15, 'Pathanamthitta', '8494946773'),
 (7, 16, 'Thrissur', '8494946772'),
 (8, 17, 'Palakkad', '8494946771'),
 (9, 18, 'Malappuram', '8494946770'),
 (10, 19, 'Kozhikode', '8494946769'),
 (11, 20, 'Kannur', '8494946768'),
 (12, 21, 'Kasargod', '8494946767'),
 (13, 22, 'Wayanad', '8494946766'),
 (14, 23, 'Idukki', '8494946765');
 
 -- Add data into table- employee
 INSERT INTO employee (emp_id, emp_name, position, salary,branch_no) VALUES
 (1100, 'Ameya', 'Clerk', 20000, 1),
 (1101, 'Jay', 'Clerk', 20000, 1),
 (1102, 'Akhila', 'LDC', 30000, 1),
 (1103, 'Lekshmi', 'Manager', 50000, 1),
 (1104, 'Akhil', 'Clerk', 20000, 1),
 (1105, 'Santhosh', 'Librarian', 60000, 1),
 (1106, 'Nithya', 'SeniorLibrarian', 70000, 1),
 (1107, 'Ameya', 'Clerk', 20000, 1),
 (1108, 'Leela', 'Librarian', 60000, 2),
 (1109, 'John', 'Clerk', 20000, 2),
 (1110, 'Paul', 'Clerk', 20000, 3),
 (1111, 'Stephen', 'Clerk', 20000, 4),
 (1112, 'Jain', 'Librarian', 20000, 5),
 (1113, 'Sandeep', 'Manager', 50000, 5),
 (1114, 'Neetha', 'Librarian', 50000, 6),
 (1115, 'Ashok', 'Manager', 50000, 6),
 (1116, 'Lal' ,'Librarian', 50000, 7),
 (1117, 'Maya', 'Manager', 50000, 7),
 (1118, 'Celin', 'Clerk', 20000, 7),
 (1119, 'Ullas', 'Librarian', 50000, 8),
 (1120, 'Arun', 'Librarian', 50000, 9),
 (1121, 'Deepa', 'Clerk', 20000, 10),
 (1122, 'Arjun', 'Manager', 20000, 11),
 (1123, 'Devika', 'Librarian', 20000, 12),
 (1124, 'Roshan', 'Clerk', 20000, 13),
 (1125, 'Aravind', 'Manager', 20000, 13),
 (1126, 'Sankalp', 'LDC', 20000, 14);
 
 -- Add data into table - books
 INSERT INTO books (ISBN, book_title, category, rental_price, status, author, publisher) VALUES
('123-456', 'Pride', 'Fiction', 100, 'yes', 'Meera', 'DC Books'),
('123-457', 'Truth', 'Biography', 100, 'yes', 'Meera', 'DC Books'),
('123-458', 'History of Modern India', 'History', 200, 'yes', 'Ashoka', 'AH Books'),
('123-459', 'Mughals - A Brief History', 'History', 50, 'yes', 'Bipin Chandra', 'DC Books'),
('123-460', 'Networking Fundamentals', 'Engineering', 150, 'yes', 'Imthias', 'DC Books'),
('123-461', 'Semiconductors', 'Engineering', 100, 'yes', 'Gopakumar', 'Young Books'),
('123-462', 'Embedded C', 'Engineering', 300, 'yes', 'Sreerag', 'TBC Books'),
('123-463', 'Microelectronics', 'Engineering', 100, 'no', 'Jubaina', 'DC Books'),
('123-464', 'The Kettle', 'Fiction', 100, 'no', 'Nithya', 'DC Books'),
('123-465', 'Advanced Python', 'Engineering', 250, 'no', 'Dean Paul', 'HC Books'),
('123-466', 'Introduction to Electrical Engineering', 'Engineering', 100, 'yes', 'Shyba', 'Young Books'),
('123-467', 'Human Anatomy', 'Medical', 50, 'yes', 'Meera', 'DC Books'),
('123-468', 'Science for Children', 'Science', 100, 'no', 'Thomas', 'DC Books'),
('123-469', 'Fun with Maths', 'Mathematics', 50, 'yes', 'Maya', 'DC Books'),
('123-470', 'Power Electronics', 'Engineering', 100, 'yes', 'Nandan', 'Alpha Books'),
('123-471', 'Young Sheldon', 'Fiction', 100, 'no', 'Philps', 'Ray Publications'),
('123-472', 'History of God', 'Mythology', 25, 'no', 'Jeevan', 'L&T Books'),
('123-473', 'The Truth', 'Biography', 100, 'yes', 'JJ Charls', 'Lavendar Books');

-- Add data into table- customer
INSERT INTO customer (customer_id, customer_name, customer_address, reg_date) VALUES
(1, 'Anjali Menon', '123 Coconut Grove, Kochi', '2023-06-01'),
(2, 'Vijay Babu', '246 Backwater Lane, Alappuzha', '2023-07-10'),
(3, 'Maya Nair', '357 Hill Station Rd, Munnar', '2023-06-15'),
(4, 'Rajesh Pillai', '468 Spice Market, Thekkady', '2023-06-20'),
(5, 'Lakshmi Nair', '579 Beach Road, Varkala', '2023-06-25'),
(6, 'Ravi Kumar', '111 Paddy Field, Kottayam', '2021-12-15'),
(7, 'Sreelakshmi', '222 Temple St, Thrissur', '2021-11-20'),
(8, 'Nikhil Joseph', '333 Hilltop, Idukki', '2020-10-10'),
(9, 'Sneha Krishnan', '444 Fort Road, Fort Kochi', '2021-09-05'),
(10, 'Anoop Menon', '555 Riverbank, Kasargod', '2020-05-30'),
(11, 'Geetha Ravi', '678 Kerala House, Thiruvananthapuram', '2023-06-02'),
(12, 'Vineesh Kumar', '789 Chai Shop Lane, Kottarakkara', '2023-06-05'),
(13, 'Anu George', '890 Ayurveda Rd, Wayanad', '2024-06-12'),
(14, 'Deepak Reddy', '901 Palm Tree Ave, Kozhikode', '2023-06-18'),
(15, 'Meena Suresh', '123 Spice Garden, Palakkad', '2023-06-22'),
(16, 'Jithin Varma', '234 Boat Jetty, Alleppey', '2021-12-01'),
(17, 'Shantha Kumari', '345 Heritage House, Kannur', '2021-08-15'),
(18, 'Kiran Thomas', '456 Sunset Point, Munnar', '2020-09-22'),
(19, 'Ranjith Babu', '567 Traditional House, Kottayam', '2021-10-30'),
(20, 'Vani Krishna', '678 Saffron Lane, Ernakulam', '2021-07-25');


-- Add data to table- issue status
INSERT INTO issueStatus (issue_id, issued_cust, issued_book_name, issue_date, isbn_book) VALUES
(1, 1, 'Pride', '2023-06-01', '123-456'),
(2, 2, 'Truth', '2023-06-10', '123-457'),
(3, 3, 'History of Modern India', '2023-06-15', '123-458'),
(4, 4, 'Mughals - A Brief History', '2023-06-20', '123-459'),
(5, 5, 'Networking Fundamentals', '2023-06-25', '123-460'),
(6, 6, 'Semiconductors', '2023-05-30', '123-461'),
(7, 7, 'Embedded C', '2023-04-15', '123-462'),
(8, 8, 'Microelectronics', '2023-03-10', '123-463'),
(9, 9, 'The Kettle', '2023-02-05', '123-464'),
(10, 10, 'Advanced Python', '2023-01-20', '123-465'),
(11, 11, 'Intoduction to Electrical Engineering', '2023-06-02', '123-466'),
(12, 12, 'Human Anatomy', '2023-06-05', '123-467'),
(13, 13, 'Science for Children', '2023-06-12', '123-468'),
(14, 14, 'Fun with Maths', '2023-06-18', '123-469'),
(15, 15, 'Power Electronics', '2023-06-22', '123-470'),
(16, 16, 'Young Sheldon', '2023-05-15', '123-471'),
(17, 17, 'History of God', '2023-04-20', '123-472'),
(18, 18, 'The Truth', '2023-03-15', '123-473');

-- Add data to table- return status
INSERT INTO returnStatus (return_id, return_cust, return_book_name, return_date, isbn_book2) VALUES
(1, 1, 'Pride', '2023-07-15', '123-456'),
(2, 2, 'Truth', '2023-07-20', '123-457'),
(3, 3, 'History of Modern India', '2023-07-25', '123-458'),
(4, 4, 'Mughals - A Brief History', '2023-07-30', '123-459'),
(5, 5, 'Networking Fundamentals', '2023-08-05', '123-460'),
(6, 6, 'Semiconductors', '2023-08-10', '123-461'),
(7, 7, 'Embedded C', '2023-08-15', '123-462'),
(8, 8, 'Microelectronics', '2023-08-20', '123-463'),
(9, 9, 'The Kettle', '2023-08-25', '123-464'),
(10, 10, 'Advanced Python', '2023-08-30', '123-465'),
(11, 11, 'Intoduction to Electrical Engineering', '2023-08-02', '123-466'),
(12, 12, 'Human Anatomy', '2023-08-05', '123-467'),
(13, 13, 'Science for Children', '2023-08-10', '123-468'),
(14, 14, 'Fun with Maths', '2023-08-15', '123-469'),
(15, 15, 'Power Electronics', '2023-08-20', '123-470'),
(16, 16, 'Young Sheldon', '2023-08-25', '123-471'),
(17, 17, 'History of God', '2023-09-01', '123-472'),
(18, 18, 'The Truth', '2023-09-05', '123-473');


-- Diplay the tables one by one
SELECT*FROM branch;
SELECT*FROM employee;
SELECT*FROM books;
SELECT*FROM customer;
SELECT*FROM issueStatus;
SELECT*FROM returnStatus;

-- Retrive the book title,category and rental price of all available books
SELECT book_title,category,rental_price
FROM books
WHERE status='Yes';

-- List the employee names and their respective salaries in descending order of salary
SELECT emp_name, salary
FROM employee
ORDER BY salary DESC;

-- Retrieve the book titles and the corresponding customers who have issued the books
SELECT c.customer_name, i.issued_book_name
FROM issueStatus i LEFT JOIN customer c ON i.issued_cust=c.customer_id;

-- Display the total count of books in each category
SELECT category, COUNT(*) AS Num_of_books
FROM books
GROUP BY category;

-- Retrieve the employee names and their positions for the employees whose salaries are above 50,000
SELECT emp_name, position, salary
FROM employee
WHERE salary>50000;

-- List the customer names who registered before 2022-01-01 and have not received any books yet.
SELECT c.customer_name, c.reg_date
FROM customer c
LEFT JOIN issueStatus i ON c.customer_id = i.issued_cust
WHERE c.reg_date < '2022-01-01' AND i.issue_id IS NULL;

-- Display the branch number and total count of employees in each branch
SELECT branch_no, COUNT(*) AS employee_count
FROM employee
GROUP BY branch_no;

-- Display the names of customers who have issued books in the month of June 2023
SELECT c.customer_name, i.issue_date
FROM customer c
JOIN issueStatus i ON c.customer_id = i.issued_cust
WHERE i.issue_date BETWEEN '2023-06-01' AND '2023-06-30';


-- Retrieve book_title from book table containing history
SELECT book_title
FROM books
WHERE book_title LIKE '%history%';

-- Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
SELECT branch_no, COUNT(emp_id) AS employee_count
FROM employee
GROUP BY branch_no
HAVING COUNT(emp_id) > 5;

-- Retrieve the names of employees who manage branches and their respective branch address
SELECT e.emp_name,e.position,b.branch_address
FROM employee e
LEFT JOIN branch b ON e.branch_no=b.branch_no
WHERE e.position='Manager';

-- Display the names of customers who have issued books with a rental price higher than Rs.25
SELECT DISTINCT c.customer_name, b.rental_price
FROM customer c
JOIN issueStatus i ON c.customer_id = i.issued_cust
JOIN books b ON i.isbn_book = b.isbn
WHERE b.rental_price > 25;







 
 
 
 