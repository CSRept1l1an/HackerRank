SELECT hacker_id, name
FROM (
    SELECT H.hacker_id, H.name, COUNT(DISTINCT S.challenge_id) AS full_score_count
    FROM Hackers H
    JOIN Submissions S ON H.hacker_id = S.hacker_id
    JOIN Challenges C ON S.challenge_id = C.challenge_id AND S.score = (SELECT MAX(score) FROM Difficulty WHERE difficulty_level = C.difficulty_level)
    GROUP BY H.hacker_id, H.name
    HAVING COUNT(DISTINCT S.challenge_id) > 1
) AS FullScoreHackers
ORDER BY full_score_count DESC, hacker_id ASC;
