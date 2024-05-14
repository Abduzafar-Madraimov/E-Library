Drop Database ELibrary;
Drop Table General_Information;
Drop Table Registration;
Drop Table Staff;
Drop Table Members; 
Drop table Author;
Drop table Publisher;
Drop table Books_Description;
Drop table Book_Relation;
Drop table Categories;
Drop Table Books;
Drop Table Fees;
Drop Table Loan_Dates;
Drop Table Loans;


Create Database ELibrary
Use ELibrary


Create table General_Information
(InfoID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Email nvarchar(50),
Contact_Number nvarchar(50),
Address nvarchar(50),
Role nvarchar(50),
Bio nvarchar(350));

Insert Into General_Information values
('I101', 'John Smith', 'john.smith@example.com', '123-456-7890', '123 Main St, Anytown', 'Author', 'Great Author from a small Town'),
('I102',  'Jane Doe',    'jane.doe@example.com',    '987-654-3210',    '456 Elm St, Anycity',    'Publisher',    'Results-driven publisher with expertise'),
('I103',    'Alex Johnson',    'alex.johnson@example.com',    '555-123-4567',    '789 Oak St, Anyville',    'Member',    'Detectives enjoyer'),
('I104',    'Emily Thompson',    'emily.thompson@example.com',    '222-333-4444',    '111 Pine St, Anyborough',    'Staff',    'Skilled developer proficient in multiple'),
('I105',    'Mike Wilson',    'mike.wilson@example.com',    '777-888-9999',    '222 Cedar St, Anyhamlet',    'Staff',    'Detail-oriented technician with'),

('I106',    'Lex Pete',    'lex.Pete@example.com',    '554-123-4567',    '789 Oak St, Anyville',    'Member',    'Detectives enjoyer'),
('I107',    'Alexander Lera',    'alexander.Lera@example.com',    '525-123-4567',    '789 Oak St, Anyville',    'Member',    'Detectives enjoyer'),
('I108',    'Leha Revan',    'leha.revan@example.com',    '515-123-4567',    '789 Oak St, Anyville',    'Member',    'Detectives enjoyer'),
('I109',    'Lexa Grig',    'lexa.johnson@example.com',    '355-123-4567',    '789 Oak St, Anyville',    'Member',    'Detectives enjoyer'),

('I110', 'F. Scott Fitzgerald', 'no data', 'no data', 'no data', 'Author', 'F. Scott Fitzgerald, in full Francis Scott Key Fitzgerald, (born September 24, 1896, St. Paul, Minnesota, U.S.—died December 21, 1940, Hollywood, California), American short-story writer and novelist famous for his depictions of the Jazz Age (the 1920s), his most brilliant novel being The Great Gatsby (1925)'),
('I111', 'Fyodor Dostoevsky', 'no data', 'no data', 'no data', 'Author', 'Russian Existentialist'),
('I112', 'Aldous Huxley', 'no data', 'no data', 'no data', 'Author', 'American Dystopian author'),
('I113', 'George Orwell', 'no data', 'no data', 'no data', 'Author', 'English novelist'),

('I114',    'Wike Milson',    'wike.milson@example.com',    '767-878-9899',    '223 Cedar St, Anyhamlet',    'Staff',    'Great Data Analyst'),
('I115',    'Cake Lison',    'Cake.lison@example.com',    '177-838-9999',    '522 Cedar St, Anyhamlet',    'Staff',    'Nice Receptionist'),
('I116',    'Kace Son',    'kace.son@example.com',    '717-828-9999',    '822 Cedar St, Anyhamlet',    'Staff',    'Nice Receptionist'),

('I117',  'Serj Dan',    'serj.dan@example.com',    '912-654-3210',    '450 Elm St, Anycity',    'Publisher',    'Results-driven publisher with expertise'),
('I118',  'Sema Den',    'sema.den@example.com',    '912-654-3000',    '455 Elm St, Anycity',    'Publisher',    'Results-driven publisher with expertise'),
('I119',  'Daren Sam',    'daren.sam@example.com',    '912-000-3210',    '479 Elm St, Anycity',    'Publisher',    'Results-driven publisher with expertise'),
('I120',  'Smith Caveman',    'smith.caveman@example.com',    '444-654-3210',    '480 Elm St, Anycity',    'Publisher',    'Results-driven publisher with expertise');


Create table Registration
(UserID nvarchar(50) Not Null Primary Key,
InfoID nvarchar(50) Foreign Key References General_Information(InfoID),
Login nvarchar(50),
Password nvarchar(50));

Insert Into Registration values 
('U101',    'I101',    'john123',    'password1'),
('U102',    'I102',    'jane456',    'password2'),
('U103',    'I103',    'alex789',    'password3'),
('U104',    'I104',    'emily321',   'password4'),
('U105',    'I105',    'mike555',    'password5');


Create table Staff
(StaffID nvarchar(50) Not Null Primary Key,
InfoID nvarchar(50) Foreign Key References General_Information(InfoID),
Job_Title nvarchar(50),
Responsibilities nvarchar(50),
Access_Level nvarchar(50));

Insert Into Staff values
('S01',    'I104',    'Receptionist',    'Register Users',    'L1'),
('S02',    'I105',    'Technician',    'Equipment maintenance',    'L2'),
('S03',    'I114',    'Data Analyst',    'Data manipulations',    'L3'),
('S04',    'I115',    'Receptionist',    'Register Users',    'L2'),
('S05',    'I116',    'Receptionist',    'Register Users',    'L2');


Create table Members
(MemberID nvarchar(50) Not Null Primary Key,
InfoID nvarchar(50) Foreign Key References General_Information(InfoID),
Member_Status nvarchar(50),
Books_Borrowed_At_The_Same_Time int,
Books_Reserved int,
Books_Borrowed_During_The_Year int);

Insert Into Members values
('M101',   'I103',    'Active',    2,    3,    5),
('M102',   'I106',    'In-Active',    0,    0,    0),
('M103',   'I107',    'Active',    1,    6,    7),
('M104',   'I108',    'Active',    3,    0,    3),
('M105',   'I109',    'Most-Active',    10,    15,    25);


Create table Author 
(AuthorID nvarchar(50) Not Null Primary Key,
InfoID nvarchar(50) Foreign Key References General_Information(InfoID));

Insert into Author values
('A01', 'I101'),
('A02', 'I110'),
('A03', 'I111'),
('A04', 'I112'),
('A05', 'I113');


Create table Publisher 
(PublisherID nvarchar(50) Not Null Primary Key,
InfoID nvarchar(50) Foreign Key References General_Information(InfoID));

Insert into Publisher values
('P01', 'I102'),
('P02', 'I117'),
('P03', 'I118'),
('P04', 'I119'),
('P05', 'I120');


Create table Books_Description  
(ISBN nvarchar(50) Not Null Primary Key,
PublisherID nvarchar(50) Foreign Key References Publisher(PublisherID),
Edition nvarchar(50),
Title nvarchar(100),
Description nvarchar(300),
Genre nvarchar (50), 
Language nvarchar (50),
Published_Date date,
Total_Quantity_Available int, 
On_Loan_Quantity int,
Reserved_Quantity int);

Insert into Books_Description values
('9781234567', 'P01', '1st', 'The Great Gatsby', 'A classic American novel set in the 1920s', 'Fiction', 'English', '1 January 2020', 10, 2, 1),
('9783334504', 'P02', '3st', 'Roomies', 'From subway to Broadway to happily ever after.', 'Fiction', 'Malay', '5 Dec 2017', 5, 0, 1),
('9783134334', 'P02', '5st', 'Crime and Punishment', 'Raskolnikov, a destitute and desperate former student...', 'Classic', 'English', '22 August 2001', 15, 10, 30),
('9133134555', 'P03', '1st', 'Brave New World', 'Largely set in a futuristic World State...', 'Dystopian', 'English', '1932', 50, 20, 5),
('9777134334', 'P05', '1st', '1984', ' It centres on the consequences of totalitarianism...', 'Dystopian', 'English', '8 June 1948', 15, 15, 0);


Create table Book_Relation
(Book_Relation nvarchar(50) Not Null Primary Key,
AuthorID nvarchar(50) Foreign Key References Author(AuthorID),
ISBN nvarchar(50) Foreign Key References Books_Description(ISBN));

Insert Into Book_Relation values 
('BR101', 'A02', '9781234567'),
('BR102', 'A01', '9783334504'),
('BR103', 'A02', '9783334504'),
('BR104', 'A03', '9783134334'),
('BR105', 'A04', '9133134555'),
('BR106', 'A05', '9777134334');


Create table Categories 
(CategoryID nvarchar(50) Not Null Primary Key,
Category nvarchar(50),
Loan_Duration nvarchar(50));

Insert Into Categories values --Only 3 categories exist 
('C01', 'Green', '24 days'),
('C02', 'Yellow', '10 days'),
('C03', 'Red', 'not aviable');


Create table Books 
(BookID nvarchar(50) Not Null Primary Key,
ISBN nvarchar(50) Foreign Key References Books_Description(ISBN),
CategoryID nvarchar(50) Foreign Key References Categories(CategoryID),
Loan_Status nvarchar(50));

Insert Into Books values 
('B1001', '9777134334', 'C01', 'On Loan'),
('B1002', '9777134334', 'C03', 'Under Restoration'),
('B1003', '9783134334', 'C01', 'Reserved'), 
('B1004', '9783134334', 'C01', 'Reserved'),
('B1005', '9783334504', 'C02', 'Available to Loan');


Create table Fees
(FeesID nvarchar(50) Not Null Primary Key,
CategoryID nvarchar(50) Foreign Key References Categories(CategoryID),
Overdue_Fee decimal(10,2));

Insert Into Fees values --Green is 1, Yellow is 2, One overdue day is 0.5 rm
('F101', 'C01', 2.5),  
('F102', 'C02', 5),
('F103', 'C01', 0.5),
('F104', 'C01', 1),
('F105', 'C02', 1);


Create table Loan_Dates 
(DateID nvarchar(50) Not Null Primary Key,
Given_Date Date,
Due_Date Date);

Insert Into Loan_Dates values 
('D1001', '1 May 2023', '11 May 2023'),
('D1002', '1 May 2023', '25 May 2023'),
('D1003', '15 May 2023', '25 May 2023'),
('D1004', '1 March 2023', '11 March 2023'),
('D1005', '10 April 2023', '20 April 2023');


Create table Loans
(LoanID nvarchar(50) Not Null Primary Key,
MemberID nvarchar(50) Foreign Key References Members(MemberID),
BookID nvarchar(50) Foreign Key References Books(BookID),
DateID nvarchar(50) Foreign Key References Loan_Dates(DateID),
Returned_Date date,
Overdue_Days int);

Insert Into Loans values --Default date indicates that book is not returned 
('L101', 'M104', 'B1001', 'D1003', '1 January 0001', 5),
('L102', 'M104', 'B1002', 'D1004', '1 January 0001', 5),
('L103', 'M103', 'B1003', 'D1005', '1 January 0001', 1),
('L104', 'M105', 'B1004', 'D1002', '1 January 0001', 2),
('L105', 'M105', 'B1005', 'D1001', '9 May 2003', 0);


--i.For each member who has borrowed more than 2 books, list the member names and the total number of books currently on loan to them. List the results in alphabetical order of member names.
Select General_Information.Name, Members.Books_Borrowed_At_The_Same_Time From Members 
Full Join General_Information 
On General_Information.InfoID = Members.InfoID
Where Members.Books_Borrowed_At_The_Same_Time >= 2
Order By General_Information.Name Asc;


--ii. List the total number of books available in each category. List the results in descending order of the total number.
Select Categories.Category, Count(Books.BookID) As Number
From Categories 
Full Join Books
On Categories.CategoryID = Books.CategoryID
Group By Categories.Category
Order By Count(Books.BookID) Desc; 


--iii. Find the genre which has the highest number of books. !
Select Top 1 Genre, sum(Total_Quantity_Available + On_Loan_Quantity + Reserved_Quantity) As Quantity 
From Books_Description
Group By Genre
Order By sum(Total_Quantity_Available + On_Loan_Quantity + Reserved_Quantity) Desc;


--iv. Show the books which are currently available for loan. !
Select Title, Genre, Language, Total_Quantity_Available
From Books_Description
Where Total_Quantity_Available > 0;


--v. List the member(s) who had made more than 2 loans. !
Select *
From General_Information
Full Join Members
On General_Information.InfoID = Members.InfoID
Where Members.Books_Borrowed_During_The_Year > 2;


--vi. List the books which are written by more than 2 authors.
Select Books_Description.ISBN, Books_Description.Title, Count(Distinct Book_Relation.AuthorID) As Author_Count, String_Agg(General_Information.Name, ', ') As Authors
From Books_Description
Full Join Book_Relation 
On Books_Description.ISBN = Book_Relation.ISBN
Full Join Author
On Book_Relation.AuthorId = Author.AuthorId
Full Join General_Information
On Author.InfoId = General_Information.InfoId
Group By Books_Description.ISBN, Books_Description.Title
Having Count(Distinct Book_Relation.AuthorID) >= 2;


--vii. Find the member(s) which has overdue loan.
Select MemberID, String_Agg(Concat(BookID, ' - ', Trim(Str(Overdue_Days)), ' days'), ',	   ') As Overdues
From Loans
Group By MemberID
Having Max(Overdue_Days) > 0;


--viii.	Find the most frequently loaned book(s)  
--1) Returns The most frequently loaned book at the moment
Select Top 1 *
From Books_Description
Order By On_Loan_Quantity Desc;

--2) Returns The most frequently loaned book by loan history
Select Top 1 Books_Description.ISBN, Books_Description.Title, Sum(Loans_Per_Book.Book_Count) As Loan_Count
From (
	Select Loans.BookId, Count(Loans.BookId) As Book_Count
	From Loans
	Group By Loans.BookId) As Loans_Per_Book
Left Join Books
On Loans_Per_Book.BookId = Books.BookId
Left Join Books_Description
On Books.ISBN = Books_Description.ISBN
Group By Books_Description.ISBN, Books_Description.Title;


--ix. Find the total number of books published by each publisher.
Select PublisherID, Sum(Total_Quantity_Available + On_Loan_Quantity + Reserved_Quantity) As Quantity
From Books_Description
Group By PublisherID;


--x. List the books which are currently under reservation. Show the result in alphabetical order of book name.
Select BookID, Books_Description.Title, Loan_Status
From Books
Full Join Books_Description On Books_Description.ISBN = Books.ISBN
Where Loan_Status = 'Reserved'
Order By Books_Description.Title Asc;
;

--Presentation Question: Show all the books published by publisher whose publisher name has the alphabet 'a' in any position
Select Books_Description.Title, Books_Description.PublisherID, General_Information.Name , General_Information.Role 
From Books_Description
Full Join Publisher
On Books_Description.PublisherID = Publisher.PublisherID
Left Join General_Information
On Publisher.InfoID = General_Information.InfoID
Where General_Information.Name Like '%a%'; 

--vi. List the books which are written by more than 2 authors.
Select Books_Description.ISBN, Books_Description.Title, Count(Distinct Book_Relation.AuthorID) As Author_Count, String_Agg(General_Information.Name, ', ') As Authors
From Books_Description
Full Join Book_Relation 
On Books_Description.ISBN = Book_Relation.ISBN
Full Join Author
On Book_Relation.AuthorId = Author.AuthorId
Full Join General_Information
On Author.InfoId = General_Information.InfoId
Group By Books_Description.ISBN, Books_Description.Title
Having Count(Distinct Book_Relation.AuthorID) >= 2;


