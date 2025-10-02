# Baza-danych-projekt-
My own database project in SQL Server Management Studio
GymDB - Gym database 
A database project for a gym, created in 'SQL Server'. The database handles 'members,memberships,trainers and payments'
It contains sample data and allows you to generate reports, e.g. on active clients, revenues, or trainer activities.

## Project structure 
*Create_gym_database.sql* - creates the databases and all tables 
*Insert_values_to_database.sql* - sample test data 
## Tables 
*Members* - gym clients (name,lastname,phone number,email,city)
*Member_ship* - memberships (dates,type,price,client connection)
*Trainers* - trainers(each trainer is also member and has their own specialization)
*Payments* - payment history(amound, method, status, membership, connection)
# How to run 
1. Create the database and tables
2. -- CREATE DATABASE GymDB;
3. -- USE GymDB;
4. then run Create_gym_database.sql
5. Insert sample data
6. -- USE GymDB;
7. Run Insert_values_to_database.sql 
