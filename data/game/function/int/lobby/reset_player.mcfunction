
team leave @s
tag @s remove game.in_game
tag @s remove lobby.in_team
tag @s remove lobby.in_ffa
clear @s
execute in game:lobby run spawnpoint @s 1 100 2
gamerule showDeathMessages false
execute in game:lobby run tp @s 1.0 100 2
gamerule showDeathMessages true
tag @s add lobby.in_lobby
team join lobby @s
function navigator:interface/player/enable_navigator
scoreboard players display numberformat @s gamemode.experience styled {"color":"red"}
scoreboard players set @s game.player.left_game 0
scoreboard players reset @s gamemode.death