function navigator:interface/player/disable_navigator
team join Red @s
tag @s add game.in_game
tag @s remove lobby.in_team
tag @s remove lobby.in_lobby
function game:display/scoreboard/setup_player
execute at @e[tag=game.map_center.item] if score @n gamemode.map_id = selected_map gamemode.settings run tp @s ~ ~ ~
function game:int/phases/insert_player
advancement grant @a[scores={navigator.page=110}] only navigator:internal/player/trigger_page_reload