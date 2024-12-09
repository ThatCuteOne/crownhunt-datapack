execute as @a[tag=lobby.in_ffa] at @s if score @s gamemode.death matches 1.. run function game:int/lobby/ffa/death
execute as @a[tag=lobby.in_ffa] at @s if score @s gamemode.kills matches 1.. run function game:int/lobby/ffa/kill
execute as @a[tag=lobby.in_ffa] unless score @s lobby.ffa_kill matches 0 run title @s actionbar [{"text":"Current ","font":"game:small_caps","color":"gold"},{"text":"kill ","font":"game:small_caps","color":"red"},{"text":"streak ","font":"game:small_caps","color":"gold"},{"score":{"name":"@s","objective":"lobby.ffa_kill"},"font":"game:small_caps","color":"light_purple"}]
execute as @e[type=#arrows] run data modify entity @s pickup set value 0b
clear @a[tag=lobby.in_ffa] glass_bottle
execute as @a[tag=lobby.in_ffa,tag=acrobat] run effect give @s speed 5 0