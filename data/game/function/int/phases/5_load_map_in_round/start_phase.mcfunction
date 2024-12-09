function game:int/phases/4_end/select_next_map
scoreboard players set phase gamemode.general 5
execute store result storage data.settings map_id byte 1 run scoreboard players get selected_map gamemode.settings
function game:int/phases/5_load_map_in_round/load_map with storage data.settings