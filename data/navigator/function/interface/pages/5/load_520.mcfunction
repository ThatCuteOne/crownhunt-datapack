
function navigator:interface/pages/5/get_kit_id with entity @s SelectedItem.components."minecraft:custom_data"
scoreboard players set @s navigator.page 520
advancement grant @s only navigator:internal/player/trigger_page_reload
