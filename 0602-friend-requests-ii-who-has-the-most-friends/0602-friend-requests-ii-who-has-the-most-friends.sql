# Write your MySQL query statement below
select id, count(*) AS num
from (
    select requester_id as id
    from RequestAccepted

    UNION ALL
    select accepter_id as id 
    from RequestAccepted
)AS friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;


-- SELECT id, COUNT(*) AS num
-- FROM (
--     SELECT requester_id AS id
--     FROM RequestAccepted

--     UNION ALL

--     SELECT accepter_id AS id
--     FROM RequestAccepted
-- ) AS friends
-- GROUP BY id
-- ORDER BY num DESC
-- LIMIT 1;
