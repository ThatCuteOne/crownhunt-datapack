data merge entity @s {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.spawn_door"],CustomName:'{"text":"Door"}'}
scoreboard players operation @s gamemode.map_id = @n[tag=game.spawn_door,type=armor_stand] gamemode.map_id
data modify entity @s Rotation set from entity @n[tag=game.spawn_door,type=armor_stand] Rotation
kill @n[tag=game.spawn_door,type=armor_stand]