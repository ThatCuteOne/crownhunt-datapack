


title @a[tag=lobby.in_lobby,tag=lobby.in_queue] actionbar [{"text":"Players in queue  ","font":"game:small_caps","color":"gold"},{"score":{"name":"players.In_queue","objective":"gamemode.general"},"font":"game:small_caps","color":"light_purple"},{"text":"/","font":"game:small_caps","color":"gold"},{"text":"4","font":"game:small_caps","color":"green"}]



execute at @e[tag=lobby.credits,type=marker] run function game:int/lobby/credits/tick


effect give @a[tag=lobby.in_lobby] saturation infinite 10 true
effect give @a[tag=lobby.in_lobby] resistance infinite 10 true
effect give @a[tag=lobby.in_lobby] weakness infinite 255 true
effect clear @a[tag=lobby.in_lobby] slowness
effect clear @a[tag=lobby.in_lobby] invisibility
effect clear @a[tag=lobby.in_lobby] levitation
effect clear @a[tag=lobby.in_lobby] jump_boost



#execute as @a[tag=lobby.in_lobby,tag=Creepermaster] if data entity @s SelectedItem.components.minecraft:custom_data.creepermaster run item replace entity @s weapon.mainhand with creeper_spawn_egg[can_place_on={predicates:[{blocks:"#game:all"}],show_in_tooltip:false},custom_name='[{"italic":false,"text":"Creeper Spawn Egg "},{"color":"red","italic":false,"text":"[disabled]"}]',custom_data={ExplosionRadius:5},entity_data={id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1,potion_contents:{custom_color:16711680}}] 7
#execute as @a[tag=lobby.in_lobby,tag=Creepermaster] if data entity @s Inventory[{Slot:-106b}].minecraft:custom_data.creepermaster run item replace entity @s weapon.mainhand with creeper_spawn_egg[can_place_on={predicates:[{blocks:"#game:all"}],show_in_tooltip:false},custom_name='[{"italic":false,"text":"Creeper Spawn Egg "},{"color":"red","italic":false,"text":"[disabled]"}]',custom_data={ExplosionRadius:5},entity_data={id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1,potion_contents:{custom_color:16711680}}] 7




execute as @e[tag=lobby.kit_next,type=interaction] if data entity @s interaction run scoreboard players add current_kit lobby.kit_viewer 1
execute as @e[tag=lobby.kit_next,type=interaction] if data entity @s interaction at @e[tag=lobby.kit_view,type=armor_stand] run playsound game:ui.select master @a ~ ~ ~ 1 1.5
execute as @e[tag=lobby.kit_next,type=interaction] if data entity @s interaction run function game:int/lobby/kit_viewer/swicher




execute as @e[tag=lobby.kit_previous,type=interaction] if data entity @s interaction run scoreboard players remove current_kit lobby.kit_viewer 1
execute as @e[tag=lobby.kit_previous,type=interaction] if data entity @s interaction at @e[tag=lobby.kit_view,type=armor_stand] run playsound game:ui.select master @a ~ ~ ~ 1 1
execute as @e[tag=lobby.kit_previous,type=interaction] if data entity @s interaction run function game:int/lobby/kit_viewer/swicher


execute as @e[tag=lobby.kit_select,type=interaction] if data entity @s interaction on target run function game:int/lobby/kit_viewer/kit/give_kit
execute as @e[tag=lobby.kit_select,type=interaction] if data entity @s interaction run data remove entity @s interaction

execute as @e[tag=lobby.kit_select,type=interaction] if data entity @s attack on attacker unless entity @s[tag=navigator.active] run function game:int/lobby/kit_viewer/reset_layout
execute as @e[tag=lobby.kit_select,type=interaction] if data entity @s attack run data remove entity @s attack

execute at @e[tag=lobby.kit_view,type=armor_stand] run kill @e[type=#arrows,distance=..7]
execute at @e[tag=lobby.kit_view,type=armor_stand] run kill @e[type=trident,distance=..7]
execute at @e[tag=lobby.kit_view,type=armor_stand] run kill @e[type=potion,distance=..7]
execute at @e[tag=lobby.kit_view,type=armor_stand] run kill @e[type=firework_rocket,distance=..7]
execute at @e[tag=lobby.kit_view,type=armor_stand] run kill @e[type=creeper,distance=..20]
execute at @e[tag=lobby.kit_view,type=armor_stand] as @a[tag=lobby.in_lobby,tag=selected_kit,distance=6..20] run function game:int/lobby/kit_viewer/goto_lobby




execute as @e[tag=ffa.join,type=interaction] if data entity @s interaction run function game:int/lobby/ffa/join/kit_select

execute as @a[tag=lobby.in_lobby,tag=selected_kit] run function game:int/lobby/kit_viewer/check_item_use


