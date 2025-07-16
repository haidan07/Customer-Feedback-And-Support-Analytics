-- Average rating per agent
SELECT a.name, AVG(f.rating) AS avg_rating
FROM feedback f
JOIN tickets t ON f.ticket_id = t.ticket_id
JOIN agents a ON t.agent_id = a.agent_id
GROUP BY a.agent_id;

-- Find low-rated tickets (1 or 2 stars)
SELECT t.ticket_id, a.name, f.rating, f.comments
FROM feedback f
JOIN tickets t ON f.ticket_id = t.ticket_id
JOIN agents a ON t.agent_id = a.agent_id
WHERE f.rating <= 2;
