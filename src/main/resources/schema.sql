CREATE TABLE RESERVATION
(
    id          bigint not null auto_increment,
    schedule_id bigint not null,
    member_id   bigint not null,
    primary key (id)
);

CREATE TABLE theme
(
    id    bigint not null auto_increment,
    name  varchar(20),
    desc  varchar(255),
    price int,
    primary key (id)
);

CREATE TABLE schedule
(
    id       bigint not null auto_increment,
    theme_id bigint not null,
    date     date   not null,
    time     time   not null,
    primary key (id)
);

CREATE TABLE member
(
    id       bigint      not null auto_increment,
    username varchar(20) not null,
    password varchar(20) not null,
    name     varchar(20) not null,
    phone    varchar(20) not null,
    role     varchar(20) not null,
    primary key (id)
);

CREATE TABLE reservation_waiting
(
    id          bigint not null auto_increment,
    schedule_id bigint not null,
    member_id   bigint not null,
    canceled    boolean not null,
    created_at  timestamp not null default current_timestamp,
    primary key (id)
);

CREATE TABLE reservation_cancellation
(
    id          bigint not null,
    schedule_id bigint not null,
    member_id   bigint not null,
    primary key (id)
);
