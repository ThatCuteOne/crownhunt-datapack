execute as @a unless score @s player_id matches -2147483648..2147483647 run function game:int/lobby/reset_player
execute as @a unless score @s player_id matches -2147483648..2147483647 run function game:int/assign_player_id



# kit select with carrot on a stick
execute as @e[type=item] at @s run function game:set_item_data

execute if score phase gamemode.general matches 3 run scoreboard players add round_time gamemode.timer 1


execute as @a[scores={kit.id=2}] run effect give @s speed infinite 0
execute as @a[scores={kit.id=6}] run effect give @s regeneration infinite 0

execute as @a unless score @s gamemode.stats.version = current_version gamemode.stats.version run function game:reset/reset_player


execute if entity @a[tag=lobby.in_lobby] run function game:int/lobby/tick

tag Alex add bot
tag Steve add bot
tag test add bot
tag bot add bot

execute as @a if score @s game.player.left_game matches 1.. run function game:int/lobby/reset_player

# phases tick
function game:int/phases/tick


execute if entity @a[tag=lobby.in_ffa] run function game:int/lobby/ffa/tick


# advencements
execute if score phase gamemode.general matches 3 run scoreboard players add @a[tag=game.in_game] gamemode.advancements.time_since_last_kill 1
