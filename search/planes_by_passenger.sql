SELECT DISTINCT plane.id AS plane_id
FROM plane
    INNER JOIN flight ON plane.id = flight.plane_id
    INNER JOIN ticket ON flight.id = ticket.flight_id
    INNER JOIN passenger ON passenger.id = ticket.passenger_id
WHERE passenger.passport = '4018-418312';