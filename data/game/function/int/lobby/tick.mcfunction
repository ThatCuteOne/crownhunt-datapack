execute at @e[tag=lobby.credits,type=marker] run function game:int/lobby/credits/tick

execute as @a[tag=lobby.in_lobby,scores={navigator.page=510}] at @s in game:lobby run function game:int/lobby/layout/tick

execute as @a[tag=lobby.in_lobby,scores={navigator.page=500..501}] run title @s times 1t 1t 0t
execute as @a[tag=lobby.in_lobby,scores={navigator.page=500..501}] run title @s actionbar [{"text": "Press ","font": "game:small_caps","color": "red"},{"keybind":"key.sneak","color": "gold"},{"text": " + ","color": "gold"},{"keybind": "key.use","color": "gold"},{"text": " to Reset the Layout","color": "red"}]

effect give @a[tag=lobby.in_lobby] saturation infinite 10 true
effect give @a[tag=lobby.in_lobby] resistance infinite 10 true
effect give @a[tag=lobby.in_lobby] weakness infinite 255 true
effect clear @a[tag=lobby.in_lobby] slowness
effect clear @a[tag=lobby.in_lobby] invisibility
effect clear @a[tag=lobby.in_lobby] levitation
effect clear @a[tag=lobby.in_lobby] jump_boost