execute store result storage temp player_id int 1 run scoreboard players get @s player_id
$data modify storage temp kit set value $(kit)
function turns:player/reset/reset_layout with storage temp