SELECT venue_id,
AVG(ticket_price) AS average_ticket_price
FROM events
GROUP BY venue_id;

SELECT venue_id,
COUNT(*) AS number_of_events
FROM events
GROUP BY venue_id;

SELECT day_of_week,
COUNT(*) AS number_of_events
FROM events
GROUP BY day_of_week;

SELECT day_of_week,
AVG(ticket_price) AS average_ticket_price
FROM events
GROUP BY day_of_week;

SELECT day_of_week,
AVG(event_duration) AS average_event_duration
FROM events
GROUP BY day_of_week;

SELECT day_of_week,
SUM(number_of_DJs) AS number_of_DJs
FROM events
GROUP BY day_of_week;