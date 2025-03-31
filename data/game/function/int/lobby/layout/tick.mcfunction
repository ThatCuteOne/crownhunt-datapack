execute as @e[type=#arrows,distance=0..] run function game:int/lobby/layout/prevent/arrow
execute as @e[type=item,distance=0..] run function game:int/lobby/layout/prevent/item

execute as @e[type=trident,distance=0..] run function game:int/lobby/layout/prevent/trident
execute as @e[type=firework_rocket,distance=0..] run function game:int/lobby/layout/prevent/firework_rocket

execute as @e[type=splash_potion,distance=0..] run function game:int/lobby/layout/prevent/potion
execute as @e[type=lingering_potion,distance=0..] run function game:int/lobby/layout/prevent/potion



kill @e[type=fishing_bobber]
title @s actionbar [{"text": "Press ","font": "game:small_caps","color": "red"},{"keybind": "key.sneak","color": "gold"},{"text": " To Save Your Layout","color": "red"}]

execute if predicate game:layout/is_sneaking run function game:int/lobby/layout/save