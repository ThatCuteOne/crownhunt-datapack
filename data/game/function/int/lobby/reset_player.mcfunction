
team leave @s
tag @s remove game.in_game
tag @s remove lobby.in_team
tag @s remove lobby.in_ffa
clear @s
execute in game:lobby run spawnpoint @s 0 100 0
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tag @s add lobby.in_lobby
team join lobby @s
function navigator:interface/player/enable_navigator
scoreboard players display numberformat @s gamemode.experience styled {"color":"red"}
scoreboard players set @s game.player.left_game 0
scoreboard players reset @s gamemode.death