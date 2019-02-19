# SQL Queries

```sql
-- Count all users

SELECT
    COUNT(*)
FROM
    users;

User.count

-- Count all active users

SELECT
    COUNT(*)
FROM
    users
WHERE
    users.active = true;

User.where(:active => true).count

-- Count all users who've visited a site within a certain time period

SELECT
    COUNT(*)
FROM
    users
WHERE
    users.last_login BETWEEN :time_period_start AND :time_period_end

User.where(last_login: (time_period_start..time_period_end)).count
```