-- drop table "Message", "Channel";

create table "Channel" (
    id bigserial primary key,
    name text not null,
    unique (name)
);

create table "Message" (
    id bigserial primary key,
    channelId bigint references "Channel" on delete cascade,
    created timestamptz not null default now(),
    text text not null
);
