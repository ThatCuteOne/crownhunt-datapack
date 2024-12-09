execute store result storage temp max int 1 run data get storage game:map_switcher maps
execute store result storage temp map int 1 run function game:int/phases/4_end/map_switcher/get_random with storage temp
function game:int/phases/4_end/map_switcher/select with storage temp