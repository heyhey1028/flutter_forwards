create table
  public.teams (
    created_at timestamp with time zone not null default now(),
    name character varying null,
    monthly_target bigint null,
    id uuid not null default gen_random_uuid (),
    constraint teams_pkey primary key (id),
    constraint teams_id_key unique (id)
  ) tablespace pg_default;
