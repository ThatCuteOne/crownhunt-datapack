



execute on target run function game:int/lobby/ffa/join
execute on target run tag @s add temp
scoreboard players operation @a[tag=temp] kit.id = @s kit.id
tag @a remove temp
execute on target run function game:int/kit_loading/give_kit
data remove entity @s interaction

