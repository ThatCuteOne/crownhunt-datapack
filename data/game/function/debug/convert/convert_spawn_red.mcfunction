data merge entity @s {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.player_spawn.red"],CustomName:'{"text":"Red spawn"}'}
scoreboard players operation @s gamemode.map_id = @n[tag=game.player_spawn.red,type=armor_stand] gamemode.map_id
data modify entity @s Rotation set from entity @n[tag=game.player_spawn.red,type=armor_stand] Rotation
kill @n[tag=game.player_spawn.red,type=armor_stand]