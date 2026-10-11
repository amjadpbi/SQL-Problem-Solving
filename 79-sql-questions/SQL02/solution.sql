-- Problem: SQL02
-- Title: Calculate the month-over-month percentage change in revenue.
-- Source URL: https://lnkd.in/gW63hRvU
-- Company: Amazon
-- SQL dialect: PostgreSQL / MySQL / SQL Server / SQLite / Other
-- SSMS
-- Problem statement:
/* calculate the month-over-month percentage change in revenue. Show the year-month and percentage change, rounded to 2 decimal places, and sort the results by month.
The percentage change should start from the second month and be calculated by comparing the current month's revenue with the previous month's revenue. */
--
-- Tables and columns involved:
-- Table = sf_transactions
-- Columns = id, created_at, value, purchase_id
-- My first attempt:
-- Write your initial query below.
--
-- SELECT ...
--
-- Final solution:
-- Write the corrected query below.
WITH monthly_revenue AS (
	SELECT
		FORMAT(created_at, 'yyyy-MM') AS year_month,
		SUM(value) AS total_revenue
	FROM 
		sf_transactions
	GROUP BY
		FORMAT(created_at, 'yyyy-MM')
),
revenue_change AS (
	SELECT
		year_month,
		total_revenue,
		LAG (total_revenue) OVER (ORDER BY year_month) previous_revenue
	FROM 
		monthly_revenue
)
	SELECT
		year_month,
		total_revenue,
	ROUND
	(
		CASE
		WHEN previous_revenue IS NULL THEN NULL
		ELSE (total_revenue - previous_revenue ) / CAST(previous_revenue AS FLOAT ) * 100
		END, 2
	) AS percentage_change
	
	FROM 
		revenue_change
	ORDER BY 
		year_month
--
-- Alternative approach (optional):
--
-- SELECT ...
--
-- What I learned:
-- Date foramte changing, LAG, CAST, ROUND
-- Explain the key difference between the first attempt and the final approach.
