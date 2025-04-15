function game:int/phases/2_kit_selection/kit/summon_kit_entity
execute store result score test temp if entity @e[tag=kit.selector]
tag @e[tag=kit.selector,limit=5,sort=random] add kit.selected
kill @e[tag=kit.selector,tag=!kit.selected]
execute as @a[tag=game.in_game] run function game:int/phases/2_kit_selection/kit/give_select_items