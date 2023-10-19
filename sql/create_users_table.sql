create table
  public.users (
    id uuid not null default gen_random_uuid (),
    created_at timestamp with time zone not null default now(),
    name text not null,
    team_id uuid null,
    role character varying null,
    icon_path text null,
    constraint users_pkey primary key (id)
  ) tablespace pg_default;
