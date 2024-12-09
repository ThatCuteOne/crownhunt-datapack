advancement revoke @s only navigator:internal/player/trigger_page_reload

clear @s carrot_on_a_stick[custom_data~{navigator:{}}]
clear @s player_head[custom_data~{navigator:{}}]

execute store result storage navigator:temp page int 1 run scoreboard players get @s navigator.page
execute store result storage navigator:temp collection int 0.01 run scoreboard players get @s navigator.page
function navigator:internal/page/load with storage navigator:temp