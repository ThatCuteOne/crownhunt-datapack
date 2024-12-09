function game:int/phases/2_kit_selection/kit/summon_kit_entity
execute store result score test temp if entity @e[tag=kit.selector]
tag @e[tag=kit.selector,limit=5,sort=random] add kit.selected
#execute store result score temp temp if entity @e[tag=kit.selector] 
#tellraw @a [{"text":"kit.selector: "},{"score":{"name":"temp","objective":"temp"}}]
#execute store result score temp temp if entity @e[tag=kit.selected] 
#tellraw @a [{"text":"kit.selected: "},{"score":{"name":"temp","objective":"temp"}}]

kill @e[tag=kit.selector,tag=!kit.selected]
execute as @a[tag=game.in_game] run function game:int/phases/2_kit_selection/kit/give_select_items



