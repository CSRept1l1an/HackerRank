SELECT h.hacker_id, h.name, COALESCE(SUM(st.sscore), 0) AS total_score
FROM Hackers h
INNER JOIN (
    SELECT s.hacker_id, MAX(score) AS sscore
    FROM Submissions s
    GROUP BY s.hacker_id, s.challenge_id
) st ON h.hacker_id = st.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COALESCE(SUM(st.sscore), 0) > 0
ORDER BY total_score DESC, h.hacker_id ASC;
