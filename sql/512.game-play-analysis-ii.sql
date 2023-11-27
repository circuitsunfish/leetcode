--
-- @lc app=leetcode id=512 lang=mysql
--
-- [512] Game Play Analysis II
--

-- @lc code=start
# Write your MySQL query statement below

   with subquery as (
    select 
    player_id,
    device_id,
    event_date,
    games_played,
    min(event_date) OVER (partition by player_id) as first_login

from activity

 )

 select 
 player_id,
 device_id

 from subquery
 where first_login = event_date

-- @lc code=end

