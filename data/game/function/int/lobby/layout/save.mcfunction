function game:int/kit_loading/save_custom_layout
clear @s
effect clear @s
playsound block.note_block.pling player @s
scoreboard players set @s navigator.page 500
execute if score @s kit.id matches 4..10 run scoreboard players set @s navigator.page 501
execute if score @s kit.id matches 11..12 run scoreboard players set @s navigator.page 502
scoreboard players set @s kit.id -1
advancement grant @s only navigator:internal/player/trigger_page_reload
