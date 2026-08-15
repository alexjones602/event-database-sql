SELECT events.event_name, venues.venue_name
FROM events
JOIN venues
ON events.event_id = venues.venue_id;

SELECT events.event_name, venues.venue_name, venues.city
FROM events
JOIN venues
ON events.event_id = venues.venue_id;

SELECT events.event_name, events.ticket_price, venues.city
FROM events
JOIN venues
ON events.event_id = venues.venue_id;

SELECT events.event_name, venues.venue_name, venues.capacity
FROM events
JOIN venues
ON events.event_id = venues.venue_id;

SELECT events.event_name, venues.venue_name, venues.city
FROM events
JOIN venues
ON events.event_id = venues.venue_id
WHERE venues.city = 'Manchester';

SELECT events.event_name, venues.venue_name, venues.city
FROM events
JOIN venues
ON events.event_id = venues.venue_id
WHERE venues.city = 'Liverpool';

SELECT events.event_name, venues.venue_name, venues.capacity
FROM events
JOIN venues
ON events.event_id = venues.venue_id
WHERE venues.capacity > 1000;

SELECT events.event_name, events.ticket_price, venues.city
FROM events
JOIN venues
ON events.event_id = venues.venue_id
WHERE events.ticket_price > 20;

SELECT events.event_name, venues.venue_name, venues.city, events.day_of_week
FROM events
JOIN venues
ON events.event_id = venues.venue_id
WHERE venues.city = 'Manchester' & events.day_of_week = 'Friday';

SELECT events.event_name, venues.venue_name, events.ticket_price
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
ORDER BY events.ticket_price DESC;

SELECT events.event_name, venues.venue_name, venues.capacity
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
ORDER BY venues.capacity DESC;

SELECT events.event_name, venues.venue_name, events.event_duration
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
ORDER BY events.event_duration DESC;

SELECT events.event_name, venues.venue_name, events.number_of_DJs
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
ORDER BY events.number_of_DJs DESC;

SELECT venues.venue_name,
COUNT(events.event_id) AS number_of_events
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.venue_name;

SELECT venues.venue_name,
AVG(events.ticket_price) AS average_ticket_price
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.venue_name;

SELECT venues.venue_name,
MAX(events.ticket_price) AS highest_ticket_price
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.venue_name;

SELECT venues.venue_name,
AVG(events.event_duration) AS average_event_duration
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.venue_name;

SELECT venues.venue_name,
AVG(events.ticket_price) AS average_ticket_price
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.venue_name
ORDER BY average_ticket_price DESC;

SELECT venues.city,
AVG(events.ticket_price) AS average_ticket_price
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.city
ORDER BY average_ticket_price DESC;

SELECT venues.city,
COUNT(events.event_id) AS number_of_events
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.city
ORDER BY number_of_events DESC;

SELECT venues.city,
AVG(events.event_duration) AS average_event_duration
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.city
ORDER BY average_event_duration DESC;

SELECT venues.city,
AVG(venues.capacity) AS average_capacity
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.city
ORDER BY average_capacity DESC;

SELECT venues.city,
COUNT(events.number_of_DJs) AS number_of_DJs
FROM events
JOIN venues
ON events.venue_id = venues.venue_id
GROUP BY venues.city
ORDER BY number_of_DJs DESC;