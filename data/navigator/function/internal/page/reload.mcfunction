advancement revoke @s only navigator:internal/player/trigger_page_reload

clear @s *[custom_data~{navigator:{}}]

execute store result storage navigator:temp page int 1 run scoreboard players get @s navigator.page
execute store result storage navigator:temp collection int 0.01 run scoreboard players get @s navigator.page
function navigator:internal/page/load with storage navigator:temp