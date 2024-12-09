execute store result score blue.player_count gamemode.general if entity @a[team=Blue]
execute store result score red.player_count gamemode.general if entity @a[team=Red]

execute if score red.player_count gamemode.general matches 0 run playsound block.note_block.didgeridoo master @s
execute if score blue.player_count gamemode.general matches 0 run playsound block.note_block.didgeridoo master @s
execute if score red.player_count gamemode.general matches 0 run return run tellraw @s [{"text":"[Game] ","font":"game:small_caps","color":"green"},{"text":"Not enough players to start a game.","color":"red"}] 
execute if score blue.player_count gamemode.general matches 0 run return run tellraw @s [{"text":"[Game] ","font":"game:small_caps","color":"green"},{"text":"Not enough players to start a game.","color":"red"}] 
 



function game:int/phases/1_loading_map/start_phase