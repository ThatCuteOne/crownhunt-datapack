
execute as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/clear_armorstand

execute at @e[tag=lobby.kit_view,type=armor_stand] run particle witch ~ ~1 ~ 0 -1 0 0.2 20


execute if score current_kit lobby.kit_viewer matches ..-1 run scoreboard players set current_kit lobby.kit_viewer 15
execute if score current_kit lobby.kit_viewer matches 16.. run scoreboard players set current_kit lobby.kit_viewer 0


execute if score current_kit lobby.kit_viewer matches 0 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Archer} 
execute if score current_kit lobby.kit_viewer matches 1 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Crossbow}
execute if score current_kit lobby.kit_viewer matches 2 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Acrobat}
execute if score current_kit lobby.kit_viewer matches 3 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Speedster}
execute if score current_kit lobby.kit_viewer matches 4 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Angel}
execute if score current_kit lobby.kit_viewer matches 5 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Knight}
execute if score current_kit lobby.kit_viewer matches 6 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Midas}
execute if score current_kit lobby.kit_viewer matches 7 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Tank}
execute if score current_kit lobby.kit_viewer matches 8 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Wither}
execute if score current_kit lobby.kit_viewer matches 9 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Assasin}
execute if score current_kit lobby.kit_viewer matches 10 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Officer}
execute if score current_kit lobby.kit_viewer matches 11 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Creepermaster}
execute if score current_kit lobby.kit_viewer matches 12 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Poseidon}
execute if score current_kit lobby.kit_viewer matches 13 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Alchemist}
execute if score current_kit lobby.kit_viewer matches 14 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Medic}
execute if score current_kit lobby.kit_viewer matches 15 as @e[tag=lobby.kit_view,type=armor_stand] run function game:int/lobby/kit_viewer/apply_items {kit:Viking}

execute if score current_kit lobby.kit_viewer matches 0..1 as @e[tag=lobby.kit_view.category,type=text_display] run data modify entity @s text set value '{text:"Range","color":"blue","font":"game:small_caps"}'
execute if score current_kit lobby.kit_viewer matches 2..3 as @e[tag=lobby.kit_view.category,type=text_display] run data modify entity @s text set value '{text:"Movement","color":"aqua","font":"game:small_caps"}'
execute if score current_kit lobby.kit_viewer matches 4..8 as @e[tag=lobby.kit_view.category,type=text_display] run data modify entity @s text set value '{text:"Tank","color":"gold","font":"game:small_caps"}'
execute if score current_kit lobby.kit_viewer matches 9..12 as @e[tag=lobby.kit_view.category,type=text_display] run data modify entity @s text set value '{text:"Damage dealer","color":"red","font":"game:small_caps"}'
execute if score current_kit lobby.kit_viewer matches 13..15 as @e[tag=lobby.kit_view.category,type=text_display] run data modify entity @s text set value '{text:"Support","color":"green","font":"game:small_caps"}'


data remove entity @s interaction