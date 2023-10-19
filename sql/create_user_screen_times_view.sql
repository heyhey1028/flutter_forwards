create view
  public.user_screen_times as
select
  users.id as user_id,
  users.name as user_name,
  users.icon_path as user_icon_path,
  teams.id as team_id,
  teams.monthly_target,
  sum(screen_times.screen_time) as sum
from
  users
  join screen_times on users.id = screen_times.user_id
  join teams on users.team_id = teams.id
group by
  users.id,
  teams.id;
