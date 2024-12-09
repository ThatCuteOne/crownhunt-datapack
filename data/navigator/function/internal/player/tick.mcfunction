execute if score @s navigator.carrot matches 1.. run function navigator:internal/actions/run
scoreboard players reset @s navigator.carrot

execute if entity @s[advancements={navigator:internal/player/food_trigger=true}] run function navigator:internal/actions/run
advancement revoke @s only navigator:internal/player/food_trigger

execute if score @s navigator.drop matches 1.. run function navigator:internal/player/check_for_dropped_items
scoreboard players reset @s navigator.drop

execute if items entity @s player.cursor *[custom_data~{navigator:{}}] run advancement grant @s only navigator:internal/player/trigger_page_reload

execute if entity @s[advancements={navigator:internal/player/trigger_page_reload=true}] run function navigator:internal/page/reload
advancement revoke @s only navigator:internal/player/trigger_page_reload


