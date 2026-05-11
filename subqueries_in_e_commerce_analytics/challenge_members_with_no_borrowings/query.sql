-- Write your code here
SELECT name
FROM members m
WHERE m.member_id NOT IN(
    SELECT DISTINCT b.member_id
    FROM borrowings b
);