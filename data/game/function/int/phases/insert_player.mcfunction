tag @s add insert_player
execute if score phase gamemode.general matches 2 run function game:int/phases/insert_player/phase_2
execute if score phase gamemode.general matches 3 run function game:int/phases/insert_player/phase_3

tag @s remove insert_player

