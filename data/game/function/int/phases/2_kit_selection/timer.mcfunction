# on timer start tellraws
execute if score start_timer gamemode.timer = start_timer_length gamemode.settings run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"Choose your Kit","font":"game:small_caps","color":"white"}]
execute if score start_timer gamemode.timer = start_timer_length gamemode.settings run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"seconds left: ","font":"game:small_caps","color":"white"},{"score":{"name":"start_timer","objective":"gamemode.timer"},"font": "game:small_caps"}]



# this command subtracts 1 from the current timer
scoreboard players remove start_timer gamemode.timer 1


# 10 seconds left
execute if score start_timer gamemode.timer matches 10 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"10 seconds left","font":"game:small_caps","color":"gold"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 10 at @s run playsound game:ui.select master @s ~ ~ ~ 1 0.1

# 5 seconds left
execute if score start_timer gamemode.timer matches 5 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"5 seconds left","font":"game:small_caps","color":"gold"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 5 at @s run playsound game:ui.select master @s ~ ~ ~ 1 0.5

# 4 seconds left
execute if score start_timer gamemode.timer matches 4 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"4 seconds left","font":"game:small_caps","color":"gold"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 4 at @s run playsound game:ui.select master @s ~ ~ ~ 1 0.7

# 3 seconds left
execute if score start_timer gamemode.timer matches 3 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"3 seconds left","font":"game:small_caps","color":"red"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 3 at @s run playsound game:ui.select master @s ~ ~ ~ 1 1
execute if score start_timer gamemode.timer matches 3 run execute at @e[tag=game.spawn_door] run fill ^-3 ^ ^ ^3 ^3 ^ minecraft:yellow_stained_glass replace lime_stained_glass

# 2 seconds left
execute if score start_timer gamemode.timer matches 2 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"2 seconds left","font":"game:small_caps","color":"red"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 2 at @s run playsound game:ui.select master @s ~ ~ ~ 1 1.2
execute if score start_timer gamemode.timer matches 2 run execute at @e[tag=game.spawn_door] run fill ^-3 ^ ^ ^3 ^3 ^ minecraft:orange_stained_glass replace yellow_stained_glass

# 1 second left
execute if score start_timer gamemode.timer matches 1 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"1 second left","font":"game:small_caps","color":"red"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 1 at @s run playsound game:ui.select master @s ~ ~ ~ 1 1.5
execute if score start_timer gamemode.timer matches 1 run execute at @e[tag=game.spawn_door] run fill ^-3 ^ ^ ^3 ^3 ^ minecraft:red_stained_glass replace orange_stained_glass

# timer end
execute if score start_timer gamemode.timer matches 0 run tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple"},{"text":"Start!!!!!","font":"game:small_caps","color":"green"}]
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 0 at @s run playsound game:ui.select master @s ~ ~ ~ 1 1.8
execute if score start_timer gamemode.timer matches 0 at @e[tag=game.spawn_door] run fill ^-3 ^ ^ ^3 ^3 ^ air replace red_stained_glass
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 0 at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1.5 0.5
execute as @a[tag=game.in_game] if score start_timer gamemode.timer matches 0 at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1.5 0.5
execute if score start_timer gamemode.timer matches 0 as @e[tag=game.spawn_door] at @s run playsound block.glass.break master @a ~ ~ ~
execute if score start_timer gamemode.timer matches 0 run function game:int/phases/3_game/start_phase


scoreboard players reset start_timer.tick gamemode.timer




