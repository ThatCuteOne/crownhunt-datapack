execute as @e[tag=game.player_spawn.blue] if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add temp
execute as @e[tag=game.player_spawn.red] if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add temp
# /ride is used to clear spectator motion
tp @s[team=Blue] @e[tag=game.player_spawn.blue,tag=temp,limit=1,sort=random] 
tp @s[team=Red] @e[tag=game.player_spawn.red,tag=temp,limit=1,sort=random] 
execute at @s run ride @s[team=Blue] mount @e[tag=temp,limit=1,sort=nearest]
ride @s dismount
execute at @s run tp @s ~ ~1 ~
tag @e remove temp

title @s clear
clear @s
scoreboard players reset @s gamemode.timer
scoreboard players reset @s gamemode.death
function game:int/kit_loading/give
scoreboard players reset @s gamemode.advancements.archer_arrows_shot
tag @s remove death
gamemode adventure @s