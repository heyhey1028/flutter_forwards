create table
  public.services (
    id uuid not null default gen_random_uuid (),
    created_at timestamp with time zone not null default now(),
    name text null,
    icon_path text null,
    constraint services_pkey primary key (id)
  ) tablespace pg_default;
