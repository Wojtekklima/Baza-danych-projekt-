USE GymDB;
/*
SELECT 
m.members_id AS MemberID,
m.first_name AS FirstName,
SUM(p.amount) AS TotalPayment,
msh.left_date AS LastMembershipDate 
FROM 
Members m 
INNER JOIN 
Member_ship msh ON m.members_id=msh.members_id
INNER JOIN 
Payments p ON msh.membership_id=p.membership_id
GROUP BY m.members_id,m.first_name,msh.left_date 
ORDER BY TotalPayment DESC;
*/
/*
SELECT 
p.payment_id AS PaymentID,
p.status AS PaymentStatus, 
m.members_id AS MemberID,
m.first_name AS FirstName 
FROM 
Payments p  
INNER JOIN 
Member_ship msh ON msh.membership_id = p.membership_id
INNER JOIN 
Members m ON m.members_id = msh.members_id 
WHERE 
p.status = 'Completed'
*/
/*
SELECT 
p.status AS PaymentStatus,
COUNT(DISTINCT m.members_id) AS NumberOfMembers
FROM 
Payments p
INNER JOIN 
Member_ship msh ON msh.membership_id = p.membership_id
INNER JOIN 
Members m ON m.members_id = msh.members_id
GROUP BY p.status;
*/ 