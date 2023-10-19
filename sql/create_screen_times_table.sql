create table
  public.screen_times (
    id uuid not null default gen_random_uuid (),
    created_at timestamp with time zone not null default now(),
    user_id uuid null default gen_random_uuid (),
    date date null,
    screen_time bigint null,
    service_id uuid null default gen_random_uuid (),
    constraint screen_times_pkey primary key (id)
  ) tablespace pg_default;
