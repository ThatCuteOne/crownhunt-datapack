
# if insert is text_display: copy from insert
execute if entity @e[tag=game.temp,type=text_display] run return run data modify storage temp text set from storage temp temp
# if insert is player: get player + score string

summon armor_stand 0.0 0 0.0 {Invisible:1b,Marker:1b,Tags:["game.leaderboard.name_provider.temp"]}
execute as @e[tag=game.temp,limit=1] run loot replace entity @e[tag=game.leaderboard.name_provider.temp] armor.head loot game:display/leaderboard/text_provider/get_player_name
data modify storage temp name set from entity @e[tag=game.leaderboard.name_provider.temp,limit=1] equipment.head.components.minecraft:profile.name
kill @e[tag=game.leaderboard.name_provider.temp]

$execute store result storage temp score int 1 run scoreboard players get @e[tag=game.temp,limit=1] leaderboard.$(name)
#execute if score @s leaderboard.id matches 2 run return run function game:display/leaderboard/update/text_provider/first_place with storage temp
#execute if score @s leaderboard.id matches 3 run return run function game:display/leaderboard/update/text_provider/second_place with storage temp
#execute if score @s leaderboard.id matches 4 run return run function game:display/leaderboard/update/text_provider/third_place with storage temp
function game:display/leaderboard/update/text_provider/concatinate_player_string with storage temp

