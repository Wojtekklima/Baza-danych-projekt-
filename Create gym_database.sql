CREATE DATABASE GymDB; 
USE GymDB;
-- clients of the gym 
CREATE TABLE Members (
members_id INT IDENTITY (1,1) PRIMARY KEY,
first_name VARCHAR (50),
last_name VARCHAR (50),
phone VARCHAR (9),
email VARCHAR (20) UNIQUE,
city VARCHAR (15)
);
-- membership of the gym 
CREATE TABLE Member_ship (
membership_id INT IDENTITY (1,1) PRIMARY KEY,
members_id INT,
join_date DATE,
left_date DATE,
membertype VARCHAR (20) NOT NULL,
price DECIMAL (5,2),
FOREIGN KEY (members_id) REFERENCES Members(members_id)
);
-- trainers in the gym 
CREATE TABLE Trainers (
trainer_id INT IDENTITY (1,1) PRIMARY KEY, 
members_id INT,
trainer_type VARCHAR (20) NOT NULL,
FOREIGN KEY (members_id) REFERENCES Members(members_id)
);
-- payments
CREATE TABLE Payments (
payment_id INT IDENTITY (1,1) PRIMARY KEY,
membership_id INT NOT NULL, 
payment_date DATE NOT NULL DEFAULT GETDATE(),
amount DECIMAL (7,2) NOT NULL,
method VARCHAR (20) CHECK (method IN ('Card', 'Cash', 'Online')),
status VARCHAR (20) CHECK (status IN ('Pending', 'Completed','Failed')),
FOREIGN KEY (membership_id) REFERENCES Member_ship(membership_id)
);
