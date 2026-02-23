create table "Channel" (
    id bigserial primary key,
    name text not null
);

create table "Message" (
    id bigserial primary key,
    channel bigint references "Channel",
    time timestamptz not null default now(),
    text text not null
);
