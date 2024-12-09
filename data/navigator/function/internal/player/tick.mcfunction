execute if score @s navigator.carrot matches 1.. run function navigator:internal/actions/run
scoreboard players reset @s navigator.carrot

execute if entity @s[advancements={navigator:internal/player/trigger_page_reload=true}] run function navigator:internal/page/reload
# execute if entity @s[advancements={navigator:internal/player/trigger_page_reload=true}] run function navigator:internal/player/check_for_dropped_items
advancement revoke @s only navigator:internal/player/trigger_page_reload