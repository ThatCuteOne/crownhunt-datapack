tag @s add death
scoreboard players operation @s gamemode.timer = death_timer gamemode.settings
gamemode spectator

execute if entity @s[tag=has_star] run scoreboard players operation @s leaderboard.distance_walked_with_crown += @s gamemode.advancements.crown_walking
execute if entity @s[tag=has_star] run scoreboard players operation @s leaderboard.distance_walked_with_crown += @s gamemode.advancements.crown_sprinting

execute as @e[tag=game.map_center.item,sort=random] at @s if score @s gamemode.map_id = selected_map gamemode.settings if score gametype gamemode.settings matches 1 run tag @s add temp

execute if score crown_behavior_type gamemode.settings matches 2 if entity @s[tag=has_star] at @e[tag=star.death_summon] run summon item ~ ~ ~ {Age:-32768,NoGravity:1b,Glowing:1b,Health:255,Invulnerable:1b,Tags:["star"],Item:{id:"minecraft:carved_pumpkin",count:1b,components:{"minecraft:custom_name":'{"text":"Crown of Time","color":"gold","italic":false}',"minecraft:custom_model_data":200,"minecraft:custom_data":{star:1b},"minecraft:enchantment_glint_override":true}}}
execute if score crown_behavior_type gamemode.settings matches 1 if entity @s[tag=has_star] at @e[tag=game.map_center.item,limit=1,sort=random,tag=temp] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Health:255,Invulnerable:1b,Tags:["star"],Item:{id:"minecraft:carved_pumpkin",count:1b,components:{"minecraft:custom_name":'{"text":"Crown of Time","color":"gold","italic":false}',"minecraft:custom_model_data":200,"minecraft:custom_data":{star:1b},"minecraft:enchantment_glint_override":true}}}

tag @s remove temp

tag @s add crown.exclude

execute if score crown_behavior_type gamemode.settings matches 3 at @e[tag=star.death_summon] if entity @s[tag=has_star] unless entity @a[tag=has_star,tag=!crown.exclude] run summon item ~ ~ ~ {Age:-32768,NoGravity:1b,Glowing:1b,Health:255,Invulnerable:1b,Tags:["star"],Item:{id:"minecraft:carved_pumpkin",count:1b,components:{"minecraft:custom_name":'{"text":"Crown of Time","color":"gold","italic":false}',"minecraft:custom_model_data":200,"minecraft:custom_data":{star:1b},"minecraft:enchantment_glint_override":true}}}

scoreboard players add @s gamemode.advancements.game_deaths 1
scoreboard players add @s leaderboard.Deaths 1
clear @s
tag @s remove has_star
scoreboard players reset @s gamemode.death
function game:int/phases/3_game/death/timer

tag @s remove crown.exclude
# advancements
advancement grant @s only game:trigger/wear_armor
execute if score round_time gamemode.timer matches ..300 if predicate game:kits/is_tank run advancement grant @s only game:kit/common/immediate_tank_death
execute if score @s leaderboard.Deaths matches 15.. run advancement grant @s only game:general/common/die_15
execute if score @s leaderboard.Deaths matches 50.. run advancement grant @s only game:general/common/die_50
execute if score @s leaderboard.Deaths matches 150.. run advancement grant @s only game:general/common/die_150
execute if score @s leaderboard.Deaths matches 500.. run advancement grant @s only game:general/common/die_500
execute if score @s leaderboard.Deaths matches 1500.. run advancement grant @s only game:general/rare/die_1500

