# SQL01 — Learning Notes

## Problem summary

Calculate each user's famous percentage by comparing their follower count with the total number of unique users on the platform.

## My approach

I created the dataset in SQL Server Management Studio (SSMS). First, I wrote a query to understand the available data. Then I tried to solve the problem myself. Since it was a hard-level question, I used the provided solution to help me work through it and solve the problem.

## What I tried

I explored the data in SSMS and worked on a query to calculate the famous percentage.

## Where I got stuck

I got stuck on why I needed to use `UNION` to combine the `user_id` and `follower_id` columns.

## Why my attempt failed

No failed attempt was recorded.

## Final understanding

I learned that `UNION` combines the user IDs from both columns and removes duplicates, allowing me to count the total number of unique users on the platform. I then used the follower count to calculate each user's percentage.

## SQL concepts practiced

- `UNION`
- Common Table Expressions (CTEs)
- Calculating a result as a percentage

## What I would do differently next time

Next time, I will try solving the problem with a subquery as well. For this problem, I found the CTE approach easier to follow and useful for reusing the result within the same query.

## Revisit notes

None for now.
