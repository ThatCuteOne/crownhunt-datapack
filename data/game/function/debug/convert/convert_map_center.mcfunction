data merge entity @s {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.map_center.item"],CustomName:'{"text":"Map Center"}'}
scoreboard players operation @s gamemode.map_id = @n[tag=game.map_center.item,type=armor_stand] gamemode.map_id
data modify entity @s Rotation set from entity @n[tag=game.map_center.item,type=armor_stand] Rotation
kill @n[tag=game.map_center.item,type=armor_stand]