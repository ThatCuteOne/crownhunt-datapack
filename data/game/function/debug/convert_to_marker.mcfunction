execute as @e[tag=game.spawn_door,type=armor_stand,distance=0..] at @s summon marker run function game:debug/convert/convert_door
execute as @e[tag=game.map_center.item,type=armor_stand,distance=0..] at @s summon marker run function game:debug/convert/convert_map_center
execute as @e[tag=game.player_spawn.blue,type=armor_stand,distance=0..] at @s summon marker run function game:debug/convert/convert_spawn_blue
execute as @e[tag=game.player_spawn.red,type=armor_stand,distance=0..] at @s summon marker run function game:debug/convert/convert_spawn_red
