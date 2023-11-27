--
-- @lc app=leetcode id=512 lang=mysql
--
-- [512] Game Play Analysis II
--

-- @lc code=start
# Write your MySQL query statement below
   select 
    player_id,
    event_date,
    SUM(games_played) OVER (partition by player_id order by event_date asc) AS games_played_so_far

from activity
group by player_id, event_date



-- @lc code=end

