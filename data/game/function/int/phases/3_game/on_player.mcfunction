

# random kit
clear @s[tag=game.in_game,tag=insert_player]
execute if entity @s[tag=!selected_kit,tag=!spec,tag=game.in_game] run function game:int/kit_loading/give_random with entity @e[tag=kit.selector,limit=1,sort=random] equipment.head.components.minecraft:custom_data
execute if entity @s[tag=game.in_game,tag=insert_player,tag=!selected_kit] run function game:int/kit_loading/give_random with entity @e[tag=kit.selector,limit=1,sort=random] equipment.head.components.minecraft:custom_data

scoreboard players reset @s game.carved_pumpkin.picked_up
scoreboard players reset @s gamemode.move_detect.jump
scoreboard players reset @s gamemode.move_detect.sprint
scoreboard players reset @s gamemode.move_detect.walk

tag @s remove has_star
effect clear @s[tag=game.in_game,tag=insert_player]
execute if entity @s[tag=game.in_game,tag=insert_player] run function game:int/phases/3_game/death/death
