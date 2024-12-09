scoreboard players display numberformat @s gamemode.experience_levels styled {"color":"green"}


# original formular: ((-73000/(0.0003x)+3.6) + 20278)/200
# level=(13+101x)/(12000+x)
scoreboard players operation @s gamemode.experience_levels = @s gamemode.experience
scoreboard players set temp temp 101
scoreboard players operation @s gamemode.experience_levels *= temp temp
scoreboard players add @s gamemode.experience_levels 13
scoreboard players operation temp temp = @s gamemode.experience
scoreboard players add temp temp 12000
scoreboard players operation @s gamemode.experience_levels /= temp temp

# xp calc
# total_xp = (13 - 12000 level)/(level - 101)
# xp_to_next_level = 1211987/(x - 101) - 1211987/(x - 100)
scoreboard players set xp_to_next_level temp 1211978
scoreboard players operation temp temp = @s gamemode.experience_levels
scoreboard players remove temp temp 101
scoreboard players operation xp_to_next_level temp /= temp temp
scoreboard players set temp temp 1211978
scoreboard players operation temp2 temp = @s gamemode.experience_levels
scoreboard players remove temp2 temp 100
scoreboard players operation temp temp /= temp2 temp
scoreboard players operation xp_to_next_level temp -= temp temp

# vanilla xp calc
# formulars (from minecraft.wiki)
#    Experience required =
#       2 × current_level + 7 (for levels 0–15)
#       5 × current_level – 38 (for levels 16–30)
#       9 × current_level – 158 (for levels 31+)
scoreboard players operation vanilla_max_xp temp = @s gamemode.experience_levels
execute if score @s gamemode.experience_levels matches 0..15 run scoreboard players set temp temp 2
execute if score @s gamemode.experience_levels matches 16..30 run scoreboard players set temp temp 5
execute if score @s gamemode.experience_levels matches 31.. run scoreboard players set temp temp 9
scoreboard players operation vanilla_max_xp temp *= temp temp
execute if score @s gamemode.experience_levels matches 0..15 run scoreboard players add vanilla_max_xp temp 7
execute if score @s gamemode.experience_levels matches 16..30 run scoreboard players remove vanilla_max_xp temp 38
execute if score @s gamemode.experience_levels matches 31.. run scoreboard players remove vanilla_max_xp temp 158

# vanilla xp amount
scoreboard players operation total_xp_to_current_level temp = @s gamemode.experience_levels
scoreboard players set temp temp -12000
scoreboard players operation total_xp_to_current_level temp *= temp temp
scoreboard players add total_xp_to_current_level temp 13
scoreboard players operation temp temp = @s gamemode.experience_levels
scoreboard players remove temp temp 101
scoreboard players operation total_xp_to_current_level temp /= temp temp

scoreboard players operation vanilla_xp temp = @s gamemode.experience
scoreboard players operation vanilla_xp temp -= total_xp_to_current_level temp
scoreboard players operation vanilla_xp temp *= vanilla_max_xp temp
scoreboard players operation vanilla_xp temp /= xp_to_next_level temp

execute store result storage temp points int 1 run scoreboard players get vanilla_xp temp
execute store result storage temp levels int 1 run scoreboard players get @s gamemode.experience_levels
function game:display/experience/set_experience with storage temp

execute if score @s gamemode.experience_levels matches 5.. run advancement grant @s only game:general/common/level_5
execute if score @s gamemode.experience_levels matches 10.. run advancement grant @s only game:general/common/level_10
execute if score @s gamemode.experience_levels matches 20.. run advancement grant @s only game:general/common/level_20
execute if score @s gamemode.experience_levels matches 30.. run advancement grant @s only game:general/common/level_30
execute if score @s gamemode.experience_levels matches 40.. run advancement grant @s only game:general/common/level_40

scoreboard players operation @s leaderboard.levels = @s gamemode.experience_levels