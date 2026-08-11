DROP TABLE IF EXISTS venues;

DROP TABLE IF EXISTS events;

CREATE TABLE venues (
    venue_id INTEGER PRIMARY KEY,
    venue_name TEXT,
    city TEXT,
    capacity INTEGER
);

INSERT INTO venues VALUES
(1, 'The Loft', 'Manchester', 250),
(2, 'Invisible Wind Factory', 'Liverpool', 1350),
(3, 'Secret Warehouse', 'Manchester', 1000),
(4, 'The Nest', 'Nottingham', 1500),
(5, 'Mint Warehouse', 'Leeds', 750),
(6, '93 Feet East', 'London', 1150);

CREATE TABLE events (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    venue_id INTEGER,
    event_date DATE,
    ticket_price REAL,
    headliner TEXT,
    number_of_DJs INTEGER,
    event_duration REAL,
    day_of_week TEXT,
    month TEXT
);

INSERT INTO events VALUES
(1, 'The Loft: Stef Davidse (All Night Long)', 1, '2026-06-12', 13.68, 'Yes', 1, 5, 'Friday', 'June'),
(2, 'Julian Fijma, Liverpool', 2, '2026-06-06', 22.50, 'Yes', 1, 6, 'Saturday', 'June'),
(3, 'Chris Stussy UK Tour', 3, '2024-04-12' , 32.50 ,'Yes', 2, 6, 'Friday', 'April'),
(4, 'Gaskin, Robbie Doherty & More', 4 ,'2026-08-01', 15.00, 'Yes', 3, 4, 'Saturday', 'August'),
(5, 'Terrace Party: Locklead, Cam Stockman, Bullet Tooth + more', 5, '2026-08-30', 15.00, 'Yes', 6, 14, 'Sunday', 'August'),
(6, 'Obskür All Night Long', 6, '2025-05-02', 20.00, 'Yes', 1, 6, 'Friday', 'May');

SELECT event_name, ticket_price
FROM events;

SELECT event_name, ticket_price
FROM events
WHERE ticket_price > 21;

SELECT event_name, ticket_price, number_of_DJs
FROM events
WHERE ticket_price > 15
AND number_of_DJs >= 2;

SELECT event_name, ticket_price, number_of_DJs
FROM events
WHERE ticket_price > 10
OR number_of_DJs  == 1;
