show databases;
create database Sky_Sports;
use Sky_Sports;
select * from skysports;
select * from footballdigest;
#2 Write an sql query to show all the UNIQUE team names 
select distinct(team) as team_name from skysports;
#3 Write an SQL query to show name of team which has rank 1 from group 7 
select team, `group`, `rank` from footballdigest where `group` = 7 and `rank` = 1;
#4 Write an sql query to show count of all teams
select count(team) from footballdigest;
#5 Write an SQL query to show matches_played by each team
select matches_played from footballdigest;
#6 Write an SQL query to show team, percent of wins with respect to matches_played by
# each team and name the resulting column as wins_percent
select team , (wins/matches_played*100) as win_percent from footballdigest;
#10 
select team , (losses/matches_played*100) as losses_percent from footballdigest  order by losses_percent;
#11
select avg(goal_difference) from footballdigest;
#12
select team from footballdigest where points = 0; 
#13
select * from footballdigest where expected_goal_scored < exp_goal_conceded ;
#14
select team , exp_goal_difference from footballdigest where exp_goal_difference>=-5 and exp_goal_difference <=5;
#15
select * from footballdigest where exp_goal_difference_per_90 order by exp_goal_difference_per_90  asc;
#16
select team from skysports where players_used = (select max(players_used) from skysports);
#17
select team , avg_age from skysports where avg_age order by avg_age;
#18
select avg(possession)  from skysports;
#19
select team , games from skysports where games >= 5;
#20
select * from skysports where minutes > 600;
#21
select team, goals, assists from skysports where goals order by goals;
#22
select team, pens_made, pens_att from skysports order by pens_made desc;
#23
select team , cards_yellow , cards_red from skysports where cards_red = 1 order by cards_yellow asc;
#24
select team, goals_per90, assists_per90, goals_assists_per90 from skysports order by goals_assists_per90 desc; 
#25
select team, goals_pens_per90, goals_assists_pens_per90 from skysports order by goals_assists_pens_per90 desc;
#28
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from skysports order by average_shot_distance desc;
#29
select team, errors, touches from skysports where errors = 0 and touches < 1500 ;
#30
select team, fouls  from skysports where fouls =(select max(fouls) from skysports);
#32
select team, aerials_won, aerials_lost, aerials_won_pct from skysports order by aerials_won_pct desc;
#34
select team from footballdigest where `group` = 6;
#35
select `group` from footballdigest where team = 'Australia';
#36
select `group`,avg(wins) from footballdigest group by `group`; 
#37
select `group`, max(expected_goal_scored) from footballdigest group by `group` order by max(expected_goal_scored) desc;
#38
select `group`, min(exp_goal_conceded) from footballdigest group by `group` order by min(exp_goal_conceded) desc;
#39
select `group`, avg(exp_goal_difference_per_90) from footballdigest group by `group` order by avg(exp_goal_difference_per_90) asc;
#40
select team from footballdigest where goals_scored = goals_against ;
#41
select team from skysports where players_used =(select max(players_used) from skysports);
#42
select team, players_used , avg_age , games , minutes  from skysports where minutes < 500 and minutes > 200;
#44
select distinct(team) from footballdigest;
#46
select gs.`group`, sum(td.fouls) as sum_fouls 
from skysports td inner join footballdigest gs 
on td.team=gs.team
group by gs.`group` 
order by sum_fouls desc;
#47
select gs.`group`, sum(td.games) as sum_games 
from skysports td inner join footballdigest gs 
on td.team=gs.team
group by gs.`group` 
order by sum_games desc;
#48
select gs.`group`, sum(td.players_used) as sum_usedplayers
from skysports td inner join footballdigest gs 
on td.team=gs.team
group by gs.`group` 
order by sum_usedplayers asc ;
#49
select gs.`group`, sum(td.offsides) as sum_offsides
from skysports td inner join footballdigest gs 
on td.team=gs.team
group by gs.`group` 
order by sum_offsides asc ;
#50
select gs.`group`, avg(td.passes_pct) as avg_passespct
from skysports td inner join footballdigest gs 
on td.team=gs.team
group by gs.`group` 
order by avg_passespct desc;
#51
select gs.`group`, avg(td.goals_per90) as avg_goalsper90
from skysports td inner join footballdigest gs 
on td.team=gs.team
group by gs.`group` 
order by avg_goalsper90 asc ;






























