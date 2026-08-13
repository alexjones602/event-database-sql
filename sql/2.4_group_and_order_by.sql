SELECT day_of_week,
AVG(ticket_price) AS average_ticket_price
FROM events
GROUP BY day_of_week
ORDER BY average_ticket_price DESC;

SELECT day_of_week,
AVG(event_duration) AS average_event_duration
FROM events
GROUP BY day_of_week
ORDER BY average_event_duration DESC;

SELECT day_of_week,
SUM(number_of_DJs) AS total_number_of_DJs
FROM events
GROUP BY day_of_week
ORDER BY total_number_of_DJs DESC;

SELECT month,
COUNT(*) AS event_count
FROM events
GROUP BY month
ORDER BY event_count DESC;

SELECT month,
AVG(ticket_price) AS average_ticket_price
FROM events
GROUP BY month
ORDER BY average_ticket_price DESC;