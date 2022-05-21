create table point
(
    id        serial
        constraint point_pk
            primary key,
    name      varchar(80) not null,
    code      integer     not null,
    longitude real        not null,
    latitude  real        not null
);

alter table point
    owner to postgres;

create unique index point_id_uindex
    on point (id);

create table plane
(
    id                  serial
        constraint plane_pk
            primary key,
    tech_insp_last_time timestamp,
    ownership           varchar(80) not null,
    payload_capacity    integer     not null,
    seats_num           integer     not null,
    type                varchar     not null,
    release_date        date        not null,
    name                varchar(50) not null
);

alter table plane
    owner to postgres;

create unique index plane_id_uindex
    on plane (id);

create table terminal
(
    id   serial
        constraint terminal_pk
            primary key,
    name varchar(10) not null
);

alter table terminal
    owner to postgres;

create unique index terminal_id_uindex
    on terminal (id);

create table flight
(
    id                 serial
        constraint flight_pk
            primary key,
    arrival_date       timestamp not null,
    departure_date     timestamp not null,
    plane_id           integer   not null,
    departure_point_id integer   not null
        constraint flight_departure_point_fk
            references point,
    arrival_point_id   integer   not null
        constraint flight_arrival_point_fk
            references point,
    terminal_id        integer
        constraint flight_terminal_fk
            references terminal
);

alter table flight
    owner to postgres;

create unique index flight_id_uindex
    on flight (id);

create table passenger
(
    id                  serial
        constraint passenger_pk
            primary key,
    fullname            varchar     not null,
    phone               varchar(20),
    passport            varchar(20) not null,
    email               varchar(30) not null,
    passport_issue_date date        not null,
    birth_date          date        not null,
    citizenship         varchar(30) not null
);

alter table passenger
    owner to postgres;

create unique index passenger_email_uindex
    on passenger (email);

create unique index passenger_id_uindex
    on passenger (id);

create table ticket
(
    id            serial
        constraint ticket_pk
            primary key,
    passenger_id  integer not null
        constraint ticket_passenger_fk
            references passenger,
    flight_id     integer not null
        constraint ticket_flight_fk
            references flight,
    purchase_time timestamp,
    cost          integer not null
);

alter table ticket
    owner to postgres;

create unique index ticket_id_uindex
    on ticket (id);