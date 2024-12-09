

execute unless entity @s[tag=navigator.active] run function game:int/kit_loading/save_custom_layout
scoreboard players reset @s lobby.kit_viewer

function navigator:interface/player/disable_navigator


function game:int/remove_game_tags


scoreboard players operation @s kit.id = current_kit lobby.kit_viewer
function game:int/kit_loading/give_kit









