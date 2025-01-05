# death and respawn manager
execute as @a[tag=game.in_game] if score @s gamemode.death matches 1.. run function game:int/phases/3_game/death/death
execute as @a[tag=death,tag=game.in_game] unless score @s gamemode.timer matches 0 run function game:int/phases/3_game/death/timer

execute if score gametype gamemode.settings matches 1 run function game:int/phases/3_game/crown/tick

# advancements
execute as @a[tag=game.in_game,tag=Archer] if score @s gamemode.advancements.archer_arrows_shot matches 16.. run advancement grant @s only game:kit/common/no_arrows_archer
scoreboard players add @a[tag=game.in_game] gamemode.advancements.crossbow.time_since_last_kill 1

execute as @a[tag=game.in_game] at @s if score @s gamemode.kills matches 1.. run function game:int/phases/3_game/kill

execute as @e[type=#arrows] run data modify entity @s pickup set value 0b
clear @a[tag=game.in_game] glass_bottle

# readds can place that was removed in the layout
execute as @s[scores={kit.id=11}] if items entity @s weapon.mainhand creeper_spawn_egg run item modify entity @s weapon.mainhand game:layout/add_can_place
execute as @s[scores={kit.id=11}] if items entity @s weapon.offhand creeper_spawn_egg run item modify entity @s weapon.offhand game:layout/add_can_place


effect give @a[tag=has_star] glowing infinite 0 true
data modify entity @e[tag=star,limit=1] Motion set value [0.0d,0.0d,0.0d]
