

execute store result score @s temp run random value 1..2
execute store result score blue.player_count gamemode.general if entity @a[team=Blue]
execute store result score red.player_count gamemode.general if entity @a[team=Red]
execute store result score in_team.player_count gamemode.general if entity @a[tag=lobby.in_team]



execute if score red.player_count gamemode.general matches 2 run scoreboard players set @s temp 2
execute if score blue.player_count gamemode.general matches 2 run scoreboard players set @s temp 1


execute if score @s temp matches 1 unless score red.player_count gamemode.general matches 2 run team join Red @s
execute if score @s temp matches 2 unless score blue.player_count gamemode.general matches 2 run team join Blue @s




execute if score in_team.player_count gamemode.general matches 2 if score red.player_count gamemode.general matches 1 run scoreboard players set @s temp 2
execute if score in_team.player_count gamemode.general matches 2 if score blue.player_count gamemode.general matches 1 run scoreboard players set @s temp 1


execute if score in_team.player_count gamemode.general matches 2 if score @s temp matches 1 unless score red.player_count gamemode.general matches 2 run team join Red @s
execute if score in_team.player_count gamemode.general matches 2 if score @s temp matches 2 unless score blue.player_count gamemode.general matches 2 run team join Blue @s


advancement grant @a[scores={navigator.page=200}] only navigator:internal/player/trigger_page_reload

playsound game:ui.select master @s ~ ~ ~