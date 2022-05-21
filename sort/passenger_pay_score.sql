SELECT passenger.fullname, SUM(ticket.cost) AS money FROM ticket
    INNER JOIN passenger on passenger.id = ticket.passenger_id
WHERE passenger.citizenship = 'Российская Федерация'
GROUP BY passenger.id;