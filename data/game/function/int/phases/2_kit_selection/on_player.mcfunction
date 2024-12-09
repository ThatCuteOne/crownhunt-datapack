
clear @s
tag @s remove selected_kit
execute if entity @s[tag=insert_player] as @e[tag=game.player_spawn.blue,sort=arbitrary] at @s if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add current_map
execute if entity @s[tag=insert_player] as @e[tag=game.player_spawn.red,sort=arbitrary] at @s if score @s gamemode.map_id = selected_map gamemode.settings run tag @s add current_map
execute if entity @s[tag=insert_player] as @s[team=Blue] at @s run function game:int/phases/2_kit_selection/tp_to_blue_spawn
execute if entity @s[tag=insert_player] as @s[team=Red] at @s run function game:int/phases/2_kit_selection/tp_to_red_spawn
execute if entity @s[tag=insert_player] run tag @e remove temp
execute if entity @s[tag=insert_player] run tag @e remove current_map
tag @s remove lobby.in_lobby
scoreboard players reset @s gamemode.death
scoreboard players reset @s carrot_on_a_stick.trigger
scoreboard players reset @s gamemode.damage_dealt
scoreboard players operation @s gamemode.round_id = current_round_id gamemode.round_id
scoreboard players reset @s game.carved_pumpkin.picked_up
execute if entity @s[tag=insert_player] run function game:int/phases/2_kit_selection/kit/give_select_items
effect clear @s
gamemode adventure @s
effect give @s saturation 1 255 true
effect give @s instant_health 1 10 true
execute if entity @s[tag=insert_player] run function game:display/scoreboard/update
advancement revoke @s only game:trigger/assasin_gain_invis
advancement revoke @s only game:trigger/take_damage
scoreboard players set @s gamemode.advancements.time_since_last_kill 1000000