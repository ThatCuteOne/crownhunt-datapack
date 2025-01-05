scoreboard players add credits.timer.tick lobby.credits 1
execute as @e[tag=lobby.credits_display] at @s run tp ~ ~0.008 ~ 

execute as @e[tag=lobby.credits_display] run scoreboard players add @s lobby.credits 1

execute as @e[tag=lobby.credits_display] if score @s lobby.credits matches 2.. run function game:int/lobby/credits/spawn_animation
execute as @e[tag=lobby.credits_display] if score @s lobby.credits matches 445.. run function game:int/lobby/credits/kill_animation

execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 7 run function game:int/lobby/credits/playtester
execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 6 run function game:int/lobby/credits/map_builder
execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 5 run function game:int/lobby/credits/art
execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 4 run function game:int/lobby/credits/balanceing
execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 3 run function game:int/lobby/credits/codeing
execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 2 run function game:int/lobby/credits/concept
execute if score credits.timer.tick lobby.credits matches 40.. if score sequence.master lobby.credits matches 1 run function game:int/lobby/credits/title



execute if score sequence.master lobby.credits matches 8.. run scoreboard players set sequence.master lobby.credits 1






execute at @e[tag=lobby.credits_kill] run kill @e[tag=lobby.credits_display,distance=..0.24]
execute at @e[tag=lobby.credits,type=text_display] run kill @e[tag=lobby.credits_display,distance=..0.24]

execute if score credits.timer.tick lobby.credits matches 40.. run scoreboard players set credits.timer.tick lobby.credits 0