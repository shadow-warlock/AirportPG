SELECT flight.id AS flight_id, COUNT(ticket.id) AS tickets
FROM flight
    INNER JOIN ticket ON flight.id = ticket.flight_id
GROUP BY flight.id;