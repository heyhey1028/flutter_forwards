create view
  public.total_user_screen_times as
select
  user_screen_times.user_id,
  user_screen_times.sum as total_service_screen_times,
  user_screen_times.user_name,
  user_screen_times.user_icon_path,
  teams.monthly_target
from
  user_screen_times
  join teams on user_screen_times.team_id = teams.id;
