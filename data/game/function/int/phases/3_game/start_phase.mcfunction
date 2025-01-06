scoreboard players set phase gamemode.general 3
# reset timer
scoreboard players reset start_timer gamemode.timer

execute as @a[tag=game.in_game] run function game:int/phases/3_game/on_player

# advancements
execute as @a[team=Blue,scores={kit.id=0}] if entity @a[team=Blue,scores={kit.id=5}] run advancement grant @a[team=Blue] only game:kit/rare/medival_combo
execute as @a[team=Blue,scores={kit.id=2}] if entity @a[team=Blue,scores={kit.id=3}] run advancement grant @a[team=Blue] only game:kit/rare/sportsmen
execute as @a[team=Red,scores={kit.id=0}] if entity @a[team=Red,scores={kit.id=5}] run advancement grant @a[team=Red] only game:kit/rare/medival_combo
execute as @a[team=Red,scores={kit.id=3}] if entity @a[team=Red,scores={kit.id=2}] run advancement grant @a[team=Red] only game:kit/rare/sportsmen
execute store result score temp temp if entity @a[team=Blue]
execute if score temp temp matches 2 run function game:int/advancements/kit/check_same_category/blue
execute store result score temp temp if entity @a[team=Red]
execute if score temp temp matches 2 run function game:int/advancements/kit/check_same_category/red
function game:int/advancements/kit/check_equal_kits
advancement revoke @a[tag=game.in_game] only game:trigger/wear_armor
scoreboard players reset @a[tag=game.in_game] gamemode.advancements.archer_arrows_shot