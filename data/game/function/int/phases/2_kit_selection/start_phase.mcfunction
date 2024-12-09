scoreboard players set phase gamemode.general 2
function game:int/phases/2_kit_selection/crown/on_start_phase

# teleport 
execute as @e[tag=game.player_spawn.blue,sort=arbitrary] at @s if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add current_map
execute as @e[tag=game.player_spawn.red,sort=arbitrary] at @s if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add current_map

execute as @a[team=Blue,sort=random] at @s run function game:int/phases/2_kit_selection/tp_to_blue_spawn
execute as @a[team=Red,sort=random] at @s run function game:int/phases/2_kit_selection/tp_to_red_spawn

tag @e remove temp
tag @e remove current_map

# team settings
team modify Blue nametagVisibility hideForOtherTeams
team modify Blue friendlyFire false
team modify Red nametagVisibility hideForOtherTeams
team modify Red friendlyFire false


execute as @a[tag=game.in_game] run function game:int/phases/2_kit_selection/on_player

# place doors
execute as @e[tag=game.spawn_door] at @s if score @s gamemode.map_id = selected_map gamemode.settings run fill ^-3 ^ ^ ^3 ^3 ^ minecraft:lime_stained_glass keep
#scores
scoreboard players add current_round_id gamemode.round_id 1

# get timer settings
scoreboard players operation death_timer gamemode.general = death_timer gamemode.settings
scoreboard players operation start_timer gamemode.timer = start_timer_length gamemode.settings

schedule function game:int/phases/2_kit_selection/kit/give_items 3s

# sidebar
scoreboard objectives setdisplay sidebar.team.blue sidebar
scoreboard objectives setdisplay sidebar.team.red sidebar
function game:display/scoreboard/update



# scores
scoreboard players add played_rounds gamemode.general 1

# summon crown
execute as @e[tag=game.map_center.item,sort=random] at @s if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add temp

execute as @e[tag=game.map_center.item,sort=random,limit=1,tag=temp] at @s run summon item ~ ~ ~ {Age:-32768,NoGravity:1b,Glowing:1b,Health:255,Invulnerable:1b,Tags:["star"],Item:{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Crown of Time"}',"minecraft:custom_model_data":200,"minecraft:custom_data":{star:1b}}}}
execute at @e[tag=star,limit=1] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["star.death_summon"]}
tag @e[tag=game.map_center.item] remove temp

