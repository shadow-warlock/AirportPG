INSERT INTO public.terminal (id, name) VALUES (1, 'A');
INSERT INTO public.terminal (id, name) VALUES (2, 'B');
INSERT INTO public.terminal (id, name) VALUES (3, 'C');
INSERT INTO public.terminal (id, name) VALUES (4, 'D');

INSERT INTO public.plane (id, tech_insp_last_time, ownership, payload_capacity, seats_num, type, release_date, name) VALUES (1, '2022-01-11 14:35:41.000000', 'Аэрофлот', 20000, 131, 'PASSENGER', '2020-06-10', 'Boeing 727-100');
INSERT INTO public.plane (id, tech_insp_last_time, ownership, payload_capacity, seats_num, type, release_date, name) VALUES (2, '2022-01-11 14:35:41.000000', 'Аэрофлот', 20000, 131, 'PASSENGER', '2019-06-07', 'Boeing 727-100');
INSERT INTO public.plane (id, tech_insp_last_time, ownership, payload_capacity, seats_num, type, release_date, name) VALUES (3, '2022-01-11 14:35:41.000000', 'Аэрофлот', 20000, 131, 'PASSENGER', '2021-08-02', 'Boeing 727-100');
INSERT INTO public.plane (id, tech_insp_last_time, ownership, payload_capacity, seats_num, type, release_date, name) VALUES (4, '2022-01-11 14:35:41.000000', 'Аэрофлот', 20000, 131, 'PASSENGER', '2020-06-26', 'Boeing 727-100');

INSERT INTO public.point (id, name, code, longitude, latitude) VALUES (1, 'Санкт-Петербург', 812, 59.93863, 30.31413);
INSERT INTO public.point (id, name, code, longitude, latitude) VALUES (2, 'Москва', 495, 55.75222, 37.61556);
INSERT INTO public.point (id, name, code, longitude, latitude) VALUES (3, 'Кировск', 81531, 67.61475, 33.67274);

INSERT INTO public.flight (id, arrival_date, departure_date, plane_id, departure_point_id, arrival_point_id, terminal_id) VALUES (1, '2022-05-21 17:40:00.000000', '2022-05-21 16:40:00.000000', 1, 2, 1, 1);
INSERT INTO public.flight (id, arrival_date, departure_date, plane_id, departure_point_id, arrival_point_id, terminal_id) VALUES (3, '2022-05-25 19:00:00.000000', '2022-05-25 16:50:00.000000', 2, 3, 1, 3);
INSERT INTO public.flight (id, arrival_date, departure_date, plane_id, departure_point_id, arrival_point_id, terminal_id) VALUES (4, '2022-05-25 23:55:00.000000', '2022-05-25 21:55:00.000000', 2, 1, 3, 2);
INSERT INTO public.flight (id, arrival_date, departure_date, plane_id, departure_point_id, arrival_point_id, terminal_id) VALUES (2, '2022-05-22 14:00:00.000000', '2022-05-22 13:00:00.000000', 1, 1, 2, 2);

INSERT INTO public.passenger (id, fullname, phone, passport, email, passport_issue_date, birth_date, citizenship) VALUES (1, 'Сивцов Никита', '88005553535', '4020-315238', 'brukus@gmail.com', '2020-09-16', '2000-05-09', 'Казахстан');
INSERT INTO public.passenger (id, fullname, phone, passport, email, passport_issue_date, birth_date, citizenship) VALUES (2, 'Пономарева Анастасия', '89344506783', '4020-123984', 'nastenka@gmail.com', '2020-10-01', '2020-07-28', 'Российская Федерация');
INSERT INTO public.passenger (id, fullname, phone, passport, email, passport_issue_date, birth_date, citizenship) VALUES (3, 'Макогон Николай Андреевич', '89817223712', '4018-418312', 'nik_mak@bk.ru', '2018-12-12', '1998-11-14', 'Российская Федерация');

INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (1, 1, 1, '2022-05-19 14:40:00.000000', 1500);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (2, 1, 2, '2022-05-21 14:55:51.000000', 2350);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (3, 2, 1, '2022-05-19 14:40:00.000000', 1500);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (4, 2, 2, '2022-05-21 14:55:51.000000', 2350);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (5, 3, 2, '2022-05-21 14:55:51.000000', 2350);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (6, 3, 1, '2022-05-19 14:40:00.000000', 1500);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (7, 3, 3, '2022-05-21 14:40:00.000000', 2200);
INSERT INTO public.ticket (id, passenger_id, flight_id, purchase_time, cost) VALUES (8, 3, 4, '2022-05-22 16:40:00.000000', 2500);