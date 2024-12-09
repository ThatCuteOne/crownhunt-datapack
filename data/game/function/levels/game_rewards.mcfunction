scoreboard players operation xp_reward temp = @s gamemode.stats.game_kills
scoreboard players set temp temp 2
execute if entity @s[team=Red] run scoreboard players operation temp temp *= red_score gamemode.general
execute if entity @s[team=Blue] run scoreboard players operation temp temp *= blue_score gamemode.general
scoreboard players operation xp_reward temp += temp temp
execute if entity @s[team=Red] if score red_score gamemode.general matches 5 run scoreboard players add xp_reward temp 5
execute if entity @s[team=Blue] if score blue_score gamemode.general matches 5 run scoreboard players add xp_reward temp 5
scoreboard players operation @s gamemode.experience += xp_reward temp
function game:display/experience/update