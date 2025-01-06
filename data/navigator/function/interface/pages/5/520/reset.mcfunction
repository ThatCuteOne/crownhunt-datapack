function game:int/kit_loading/reset_custom_layout
scoreboard players set @s navigator.page 500
execute if score @s kit.id matches 4..8 run scoreboard players set @s navigator.page 501
scoreboard players set @s kit.id -1
advancement grant @s only navigator:internal/player/trigger_page_reload