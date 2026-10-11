# SQL02 — Learning Notes

## Problem summary

Calculate the month-over-month percentage change in revenue.

## My approach

First, I formatted the date into the year-month format and calculated the total revenue for each month. Then I used two CTEs: the first for monthly revenue and the second for revenue change. I used the `LAG` window function to get the previous month's revenue, then calculated the percentage change. I used `ROUND` to show two decimal places and a `CASE` statement to return `NULL` for the first month, where there is no previous month's revenue.

## What I tried

I tried to calculate monthly revenue first, then use `LAG` to get the previous month's revenue and calculate the percentage change.

## Where I got stuck

I got stuck on using `LAG` and calculating the final revenue percentage change.

## Why my attempt failed

No failed attempt recorded.

## Final understanding

The first CTE calculates total revenue for each month. The second CTE uses `LAG` to get the previous month's revenue. I can then compare both months to calculate the percentage change. The `CASE` statement handles the first month, and `ROUND` rounds the result to two decimal places.

## SQL concepts practiced

See the `What I learned` section in `solution.sql`.

## Revisit notes

None for now.
