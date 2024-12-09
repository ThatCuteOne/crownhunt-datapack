scoreboard players set phase gamemode.general 1
execute store result storage data.settings map_id byte 1 run scoreboard players get selected_map gamemode.settings
function game:int/phases/1_loading_map/get_map with storage data.settings

function game:display/scoreboard/setup
execute as @a[tag=game.in_game] run function game:display/scoreboard/setup_player
function game:display/game_settings

scoreboard players set @a[scores={navigator.page=100..499}] navigator.page 100
advancement grant @a[scores={navigator.page=100}] only navigator:internal/player/trigger_page_reload