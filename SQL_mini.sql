create database Banking;

use Banking;

-- 1. Load dataset

-- 2. Print schema
desc loans;

-- 3. Find the number of loans in each category.
select * from loans;
select distinct `Loan Category` from loans;
select `Loan Category`,count(*) as number_of_loan from loans group by `loan category`; 

-- 4.Find the number of people who have taken more than 1 lack loan
select count(*) from loans where `Loan Amount` > 100000;

-- 5.Find the number of people with income greater than 60000 rupees.
select count(*) from loans where `income` >= 60000;
select count(*) from loans where `income` >= 60000 group by `income`;

-- 6. Find the number of people with 2 or more returned cheques and income less than 50000.
select count(*) from loans where `returned cheque` >= 2 and `income` < 50000;

-- 7. Find the number of people with 2 or more returned cheques and are single.
select count(*) from loans where `returned cheque` >= 2 and `marital status` = 'Single';
select * from loans;

-- 8. Find the number of people with expenditure over 50000 a month.
select count(*) from loans where `expenditure` > 50000;

-- 9. Find the number of members who are eligible for creditcard.
select count(`customerid`) from credit where `Age` >= 21;
select * from credit;

-- 10. Find the number of members who are elgible and active in the bank.
select count(*) as number_of_member from credit where `Age`>= 21 and `isActiveMember` =1;
 
-- 11. Find the credit card users in Spain.
select * from credit where Geography ='Spain';
select * from credit;

-- 12. Find the COUNT OF TRANSACTION ON EVERY ACCOUNT.
SELECT `Account No`, COUNT(*) AS transaction_count FROM txn GROUP BY `Account No`;

select * from txn;

-- 13. Find the Maximum withdrawal amount.
select max(`WITHDRAWAL AMT`) as max_withdrawal from txn;

-- 14. Find the MINIMUM WITHDRAWAL AMOUNT OF AN ACCOUNT.
select min(`WITHDRAWAL AMT`) as min_withdrawal from txn;

-- 15. Find the MAXIMUM DEPOSIT AMOUNT OF AN ACCOUNT.
select `Account No`, max(`DEPOSIT AMT`) as max_DEPOSIT from txn group by `Account No`;

-- 16. Find the MINIMUM DEPOSIT AMOUNT OF AN ACCOUNT.
select `Account No`, min(`DEPOSIT AMT`) as min_DEPOSIT from txn group by `Account No`;

-- 17. Find the sum of balance in every bank account.
select sum(`BALANCE AMT`) from txn;
select * from txn;

-- 18. Find the Number of transaction on each date.
select `VALUE DATE`, count(*) from txn group by `VALUE DATE`;

-- 19. Find the list of customers with withdrawal amount more than 1 lakh.
select `Account No` from txn where `WITHDRAWAL AMT` > 100000;