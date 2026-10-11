-- Problem: SQL01
-- Title: Facebook / Meta Famous Percentage Interview Question
-- Source URL: https://lnkd.in/gWZ_WD8m
-- Company: Facebook / Meta
-- SQL dialect: PostgreSQL / MySQL / SQL Server / SQLite / Other
-- SQL Server Management Studio
-- Problem statement: 
/*
Problem Statement:
Calculate the famous percentage for each user on the platform. A user is considered famous based on the number of followers they have compared with the total number of unique users on the platform.
*/
--
-- Tables and columns involved:
/* Tables = famous
Columns = user_id, follower_id
*/
--
-- My first attempt:
-- Write your initial query below.
--
-- SELECT ...
--
-- Final solution:

--Calculate total number of user on platform
WITH distinct_users AS (
	SELECT user_id FROM famous

	UNION
	
	SELECT follower_id FROM famous
	),	
											--Calculate number of followers
	followers_count AS (
		SELECT user_id, COUNT (follower_id) AS followers
		FROM famous
		GROUP BY user_id
		)
											--Percentage of followers by User
	SELECT 
	f.user_id,
	(f.followers * 100.00) / (SELECT COUNT(*) FROM distinct_users) AS famous_percentage
	FROM followers_count f;

-- Write the corrected query below.
--
-- SELECT ...
--
-- Alternative approach (optional):
--
-- SELECT ...
--
-- What I learned:
/* I learned how to calculate total numbers of users on a platform and then solve the question */

-- Explain the key difference between the first attempt and the final approach.
