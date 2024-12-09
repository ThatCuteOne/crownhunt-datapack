tp @a[tag=lobby.in_team,sort=random,limit=4] 0 17 0
tag @a[distance=0..,tag=lobby.in_team] add game.in_game
tag @a[distance=0..,tag=lobby.in_team] remove lobby.in_ffa
tag @a[distance=0..,tag=lobby.in_team] remove lobby.in_lobby
tag @a[distance=0..,tag=lobby.in_team] remove lobby.in_team
clear @a[distance=0..,tag=game.in_game]

scoreboard players set @a gamemode.stats.crown_seconds 0
scoreboard players set @a gamemode.stats.game_deaths 0
scoreboard players set @a gamemode.stats.game_kills 0

scoreboard players reset @a game.carved_pumpkin.picked_up


scoreboard players operation @a[tag=game.in_game] gamemode.game_id = game_id gamemode.game_id
gamemode spectator @a[tag=game.in_game]
title @a[tag=game.in_game] title {"text":"Loading Map ...","color":"yellow"}
effect give @a[tag=game.in_game] minecraft:blindness 1 20 true
execute as @a[tag=game.in_game] run function navigator:interface/player/disable_navigator
function game:display/hints/display
schedule function game:int/phases/2_kit_selection/start_phase 5s