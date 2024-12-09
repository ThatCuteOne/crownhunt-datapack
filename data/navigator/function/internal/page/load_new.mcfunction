item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

playsound minecraft:item.armor.equip_generic master @s ~ ~ ~ 1 1
clear @s carrot_on_a_stick[custom_data~{navigator:{}}]
clear @s player_head[custom_data~{navigator:{}}]

execute store result storage navigator:temp page int 1 run scoreboard players get @s navigator.page
execute store result storage navigator:temp collection int 0.01 run scoreboard players get @s navigator.page
function navigator:internal/page/load with storage navigator:temp