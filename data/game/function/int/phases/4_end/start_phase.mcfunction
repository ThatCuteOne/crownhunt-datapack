scoreboard players set phase gamemode.general 4

execute if score gametype gamemode.settings matches 1 run function game:int/phases/4_end/crown/round

title @a times 0 60 10
kill @e[tag=kit.selected]
# advanecment
advancement grant @a[tag=game.in_game,advancements={game:trigger/take_damage=false}] only game:general/epic/dont_take_damage
execute as @a[tag=game.in_game] unless score @s gamemode.damage_dealt matches 0.. run advancement grant @s only game:general/rare/pacifist
advancement grant @a[tag=game.in_game,scores={gamemode.advancements.round_kills=4..}] only game:general/common/kill_4_in_one_round
advancement grant @a[tag=game.in_game,scores={gamemode.advancements.round_kills=6..}] only game:general/common/kill_6_in_one_round
advancement grant @a[tag=game.in_game,scores={gamemode.advancements.round_kills=10..}] only game:general/rare/kill_10_in_one_round
scoreboard players reset @a[tag=game.in_game] gamemode.damage_dealt
scoreboard players reset @a[tag=game.in_game] gamemode.move_detect.jump
scoreboard players reset @a[tag=game.in_game] gamemode.move_detect.sprint
scoreboard players reset @a[tag=game.in_game] gamemode.move_detect.walk
scoreboard players reset @a[tag=game.in_game] gamemode.advancements.archer_arrows_shot
scoreboard players reset @a gamemode.advancements.round_kills



advancement grant @a[tag=game.in_game] only bpvp:attack_while_invisible


effect clear @a[tag=game.in_game]
execute as @a[tag=death] run function game:int/phases/3_game/death/respawn
clear @a[tag=game.in_game]
# scores
scoreboard players reset star_timer_red gamemode.timer
scoreboard players reset star_timer_blue gamemode.timer
scoreboard players reset star_timer_red.tick gamemode.timer
scoreboard players reset star_timer_blue.tick gamemode.timer
scoreboard players reset round_time

scoreboard players set @a[tag=game.in_game] kit.id -1
schedule function game:int/phases/4_end/update_leaderboard 1s

# kill entities
kill @e[type=trident]
kill @e[type=area_effect_cloud]
kill @e[type=#arrows]
kill @e[type=creeper]
kill @e[tag=star.death_summon]

# scoreboard
function game:display/scoreboard/update
function game:display/score_display

execute if score red_score gamemode.general matches 5.. run return run function game:int/phases/4_end/game
execute if score blue_score gamemode.general matches 5.. run return run function game:int/phases/4_end/game
execute if score map_switcher_type gamemode.settings matches ..1 run function game:int/phases/2_kit_selection/start_phase
execute if score map_switcher_type gamemode.settings matches 2 run function game:int/phases/5_load_map_in_round/start_phase
