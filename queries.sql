--All queries that would be used in the program

--Firstly, getting books from a search
--It would depend on the selected type when they hit submit (Title, Author, Year etc...)
--Example: customer searches while title is selected -> their input is stored as "searched"
SELECT * FROM Book WHERE title = searched;

--All other searches would look like this
SELECT * FROM Book WHERE author = searched;
SELECT * FROM Book WHERE ISBN = searched;
SELECT * FROM Book WHERE genre = searched;
SELECT * FROM Book WHERE year = searched;
SELECT * FROM Book WHERE publisher = searched;

--Getting billing information of an account at checkout
SELECT Billing_Information.* FROM Billing_Information JOIN Customer
ON Billing_Information.ID = Customer.email;

--Getting shipping information of an account at checkout
SELECT Shipping_Information.* FROM Shipping_Information JOIN Customer
ON Shipping_Information.ID = Customer.email;

--Getting order information when given order number (as onum)
SELECT * FROM Order WHERE orderNum = onum;

--Retrieving account information
SELECT * FROM Customer WHERE email = curr_email;

--Creating account
INSERT INTO Customer
VALUES ('email', 'password', 'accountType', 'bID', 'SID');