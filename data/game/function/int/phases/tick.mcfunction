execute if score phase gamemode.general matches 1 run function game:int/phases/1_loading_map/tick
execute if score phase gamemode.general matches 2 run function game:int/phases/2_kit_selection/tick
execute if score phase gamemode.general matches 3 run function game:int/phases/3_game/tick
execute if score phase gamemode.general matches 4 run function game:int/phases/4_end/tick




execute if score phase gamemode.general matches 1..5 if entity @a[tag=game.in_game] unless entity @a[tag=game.in_game,team=Blue] run function game:int/phases/4_end/game
execute if score phase gamemode.general matches 1..5 if entity @a[tag=game.in_game] unless entity @a[tag=game.in_game,team=Red ] run function game:int/phases/4_end/game