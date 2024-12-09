tag @s add lobby.in_lobby
tag @s remove lobby.in_ffa


tag @s add player.temp
execute as @e[type=item] run function game:int/lobby/ffa/remove_carry_items
tag @s remove player.temp


execute as @a[tag=lobby.in_ffa] if score @s gamemode.kills matches 1.. run tag @s add temp
execute if entity @e[tag=temp] run tellraw @s [{"selector":"@a[tag=temp,limit=1]","color":"red"},{"text":" had ","color":"gray"},{"score":{"name":"@a[tag=temp,limit=1]","objective":"gamemode.health"},"color":"red"},{"text":" Health left","color":"gray"}]
tag @a remove temp

scoreboard players reset @s gamemode.death
clear @s
function navigator:interface/player/enable_navigator
execute unless score @s leaderboard.FFA-highest-streak >= @s lobby.ffa_kill run scoreboard players operation @s leaderboard.FFA-highest-streak = @s lobby.ffa_kill

scoreboard players set @s lobby.ffa_kill 0
function game:int/remove_game_tags
schedule function game:int/lobby/ffa/death_update 1s

