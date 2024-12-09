execute at @e[tag=game.spawn_door,type=armor_stand,distance=0..] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.spawn_door"],CustomName:'{"text":"Door"}'}
execute as @e[tag=game.spawn_door,type=marker,distance=0..] run scoreboard players operation @s gamemode.map_id = @e[tag=game.spawn_door,type=armor_stand,distance=0..] gamemode.map_id
execute as @e[tag=game.spawn_door,type=marker,distance=0..] at @s run data modify entity @s Rotation set from entity @e[tag=game.spawn_door,type=armor_stand,distance=0..,limit=1,sort=nearest] Rotation
kill @e[tag=game.spawn_door,type=armor_stand,distance=0..]

execute at @e[tag=game.map_center.item,type=armor_stand,distance=0..] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.map_center.item"],CustomName:'{"text":"map Center"}'}
execute as @e[tag=game.map_center.item,type=marker,distance=0..] run scoreboard players operation @s gamemode.map_id = @e[tag=game.map_center.item,type=armor_stand,distance=0..] gamemode.map_id
execute as @e[tag=game.map_center.item,type=marker,distance=0..] at @s run data modify entity @s Rotation set from entity @e[tag=game.map_center.item,type=armor_stand,distance=0..,limit=1,sort=nearest] Rotation
kill @e[tag=game.map_center.item,type=armor_stand,distance=0..]

execute at @e[tag=game.player_spawn.blue,type=armor_stand,distance=0..] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.player_spawn.blue"],CustomName:'{"text":"Blue spawn"}'}
execute as @e[tag=game.player_spawn.blue,type=marker,distance=0..] run scoreboard players operation @s gamemode.map_id = @e[tag=game.player_spawn.blue,type=armor_stand,distance=0..] gamemode.map_id
execute as @e[tag=game.player_spawn.blue,type=marker,distance=0..] at @s run data modify entity @s Rotation set from entity @e[tag=game.player_spawn.blue,type=armor_stand,distance=0..,limit=1,sort=nearest] Rotation
kill @e[tag=game.player_spawn.blue,type=armor_stand,distance=0..]

execute at @e[tag=game.player_spawn.red,type=armor_stand,distance=0..] run summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["game.player_spawn.red"],CustomName:'{"text":"Red spawn"}'}
execute as @e[tag=game.player_spawn.red,type=marker,distance=0..] run scoreboard players operation @s gamemode.map_id = @e[tag=game.player_spawn.red,type=armor_stand,distance=0..] gamemode.map_id
execute as @e[tag=game.player_spawn.red,type=marker,distance=0..] at @s run data modify entity @s Rotation set from entity @e[tag=game.player_spawn.red,type=armor_stand,distance=0..,limit=1,sort=nearest] Rotation
kill @e[tag=game.player_spawn.red,type=armor_stand,distance=0..]


