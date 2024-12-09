execute if score red_score gamemode.general > blue_score gamemode.general run function game:int/phases/4_end/win/game/red
execute if score red_score gamemode.general < blue_score gamemode.general run function game:int/phases/4_end/win/game/blue

# advancements
execute as @a[tag=game.in_game] if score @s leaderboard.Wins matches 5.. run advancement grant @s only game:general/common/win_5
execute as @a[tag=game.in_game] if score @s leaderboard.Wins matches 15.. run advancement grant @s only game:general/common/win_15
execute as @a[tag=game.in_game] if score @s leaderboard.Wins matches 30.. run advancement grant @s only game:general/rare/win_30
execute as @a[tag=game.in_game] if score @s leaderboard.Wins matches 60.. run advancement grant @s only game:general/epic/win_60
execute as @a[tag=game.in_game] unless score @s gamemode.picked_up_star matches 1.. run advancement grant @s only game:general/rare/no_star_for_a_game
execute as @a[tag=game.in_game] unless score @s gamemode.advancements.game_deaths matches 1.. run advancement grant @s only game:general/epic/dont_die_for_game
scoreboard players reset @a[tag=game.in_game] gamemode.advancements.game_deaths
scoreboard players reset @a[tag=game.in_game] gamemode.picked_up_star


execute as @a[tag=game.in_game] run function navigator:interface/player/enable_navigator

# team settings
team modify Blue nametagVisibility always
team modify Red nametagVisibility always
team modify Red friendlyFire true
team modify Blue friendlyFire true


scoreboard players add game_id gamemode.game_id 1 
effect clear @a[tag=game.in_game]
clear @a[tag=game.in_game]
tag @a[tag=game.in_game] remove selected_kit
gamemode adventure @a[tag=game.in_game]
gamemode adventure @a[team=spectator]
tag @a[tag=game.in_game] add lobby.in_team
execute in overworld run tp @a[tag=game.in_game] 57 56 42
execute in overworld run tp @a[team=spectator] 57 56 42
tag @a[tag=game.in_game] add lobby.in_lobby
team empty spectator
spawnpoint @a 57 56 42
scoreboard players reset @a sidebar
scoreboard objectives setdisplay sidebar
scoreboard players set blue_score gamemode.general 0
scoreboard players set red_score gamemode.general 0
scoreboard players set played_rounds gamemode.general 0
bossbar set star_timer_blue visible false
bossbar set star_timer_red visible false
tag @a remove game.in_game
scoreboard players add current_round_id gamemode.round_id 1
scoreboard players set phase gamemode.general 0
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue

scoreboard players set @a[scores={navigator.page=110}] navigator.page 100
advancement grant @a[scores={navigator.page=100}] only navigator:internal/player/trigger_page_reload

execute if score map_switcher_type gamemode.settings matches 1.. run function game:int/phases/4_end/select_next_map