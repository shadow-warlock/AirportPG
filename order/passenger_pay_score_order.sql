COPY
    (SELECT passenger.fullname, SUM(ticket.cost) AS money FROM ticket
    INNER JOIN passenger on passenger.id = ticket.passenger_id
    WHERE passenger.citizenship = 'Российская Федерация'
    GROUP BY passenger.id)
TO
    '/order/passenger_pay_order.csv';

//требуются права: mkdir /order & chown -R 777 /order от рута в контейнере