scoreboard players add @s lobby.kit_viewer 1
execute if score @s lobby.kit_viewer matches 1 run playsound minecraft:entity.ender_dragon.growl master @s
execute if score @s lobby.kit_viewer matches 1 run title @s actionbar {"color":"red","font":"game:small_caps","text":"Left click again if you want to reset the kit layout"}

execute if score @s lobby.kit_viewer matches 2 run function game:int/kit_loading/reset_custom_layout
execute if score @s lobby.kit_viewer matches 2 run function game:int/kit_loading/give_kit
execute if score @s lobby.kit_viewer matches 2.. run scoreboard players reset @s lobby.kit_viewer