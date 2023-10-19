create view
  public.service_screen_times as
select
  users.id as user_id,
  users.name as user_name,
  teams.id as team_id,
  teams.monthly_target,
  sum(screen_times.screen_time) as sum,
  services.id as service_id,
  services.name as service_name,
  services.icon_path
from
  users
  join screen_times on users.id = screen_times.user_id
  join teams on users.team_id = teams.id
  join services on screen_times.service_id = services.id
group by
  users.id,
  services.id,
  teams.id;
