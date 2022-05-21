SELECT plane.id AS plane_id, COUNT(ticket.id) AS tickets
FROM plane
         INNER JOIN flight ON plane.id = flight.plane_id
         INNER JOIN ticket ON flight.id = ticket.flight_id
WHERE flight.departure_date >= '2022 - 05 - 22' AND flight.arrival_date <= '2022 - 05 - 26'
GROUP BY plane.id;