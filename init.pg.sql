create table tp_user
(
    id          serial
        constraint tp_user_pk
            primary key,
    username    varchar(50) not null,
    password    varchar(50) not null,
    name        varchar(20),
    email       varchar(50),
    avatar      text,
    phone       varchar(20),
    role_id     int,
    create_time timestamp,
    update_time timestamp,
    state       int,
    token       varchar(40),
    expire      timestamp
);

comment on table tp_user is '用户表';

insert into tp_user (id, username, password, email, phone, role_id, state)
values (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@twimi.cn', '13312345678', 1, 1);

create table tp_live
(
    id          serial
        constraint tp_live_pk
            primary key,
    title       varchar(50) not null,
    extra       text,
    create_time timestamp,
    user_id     integer,
    state       integer
);

create table tp_message
(
    id        serial
        constraint tp_message_pk
            primary key,
    live_id   integer,
    type      integer,
    content   text,
    extra     text,
    timestamp timestamp
);

create table tp_article
(
    id          serial
        constraint tp_article_pk
            primary key,
    title       text,
    content     text,
    create_time timestamp,
    user_id     integer,
    state       integer
);