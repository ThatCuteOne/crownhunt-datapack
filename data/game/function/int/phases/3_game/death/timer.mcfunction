scoreboard players remove @s gamemode.timer 1

title @a[tag=game.in_game] times 0 20 5
title @s title ""
execute if score @s gamemode.timer matches 1..20 run title @s subtitle [{"text":"You will respawn in 0 seconds","color":"white"}]
execute if score @s gamemode.timer matches 20..40 run title @s subtitle [{"text":"You will respawn in 1 second","color":"white"}]
execute if score @s gamemode.timer matches 40..60 run title @s subtitle [{"text":"You will respawn in 2 seconds","color":"white"}]
execute if score @s gamemode.timer matches 60..80 run title @s subtitle [{"text":"You will respawn in 3 seconds","color":"white"}]
execute if score @s gamemode.timer matches 80..100 run title @s subtitle [{"text":"You will respawn in 4 seconds","color":"white"}]
execute if score @s gamemode.timer matches 100 run title @s subtitle [{"text":"You will respawn in 5 seconds","color":"white"}]


execute if score @s gamemode.timer matches ..0 run function game:int/phases/3_game/death/respawn



