
effect clear @s
effect give @s instant_health 1 10
effect give @s saturation 1 255





#-- Debug --
#tellraw @a {"nbt":"selected.kit","storage":"data.player"}
scoreboard players operation @s leaderboard.FFA-Total-Kills += @s gamemode.kills

function game:int/kit_loading/give_kit
tag @s add temp
execute as @e[type=trident] at @s on origin if entity @s[tag=temp] run kill @n[type=trident]
tag @s remove temp

#scoreboard players add @s lobby.ffa_all_time 1
scoreboard players add @s lobby.ffa_kill 1




scoreboard players reset @s gamemode.kills
