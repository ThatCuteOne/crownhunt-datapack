






team join spectator @s
gamemode spectator @s
execute at @e[tag=game.map_center.item] if score @n gamemode.map_id = selected_map gamemode.settings run tp @s ~ ~ ~
tag @s remove lobby.in_team


advancement grant @a[scores={navigator.page=110}] only navigator:internal/player/trigger_page_reload