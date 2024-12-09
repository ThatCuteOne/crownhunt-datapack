scoreboard players set temp temp 0
execute if score @s lobby.item_used.bow matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.creeper_spawn_egg matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.crossbow matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.golden_apple matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.lingering_potion matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.potion matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.splash_potion matches 1.. run scoreboard players set temp temp 1
execute if score @s lobby.item_used.trident matches 1.. run scoreboard players set temp temp 1

execute if score temp temp matches 1 run function game:int/lobby/kit_viewer/give_current_kit

scoreboard players reset @s lobby.item_used.bow
scoreboard players reset @s lobby.item_used.creeper_spawn_egg
scoreboard players reset @s lobby.item_used.crossbow
scoreboard players reset @s lobby.item_used.golden_apple
scoreboard players reset @s lobby.item_used.lingering_potion
scoreboard players reset @s lobby.item_used.potion
scoreboard players reset @s lobby.item_used.splash_potion
scoreboard players reset @s lobby.item_used.trident
