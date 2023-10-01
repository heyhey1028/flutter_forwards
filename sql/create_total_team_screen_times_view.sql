create view
  public.total_team_screen_times as
select
  sum(user_screen_times.sum) as monthly_target,
  sum(user_screen_times.monthly_target) as total_team_screen_times,
  count(*) as team_member_count
from
  user_screen_times
group by
  user_screen_times.team_id;
