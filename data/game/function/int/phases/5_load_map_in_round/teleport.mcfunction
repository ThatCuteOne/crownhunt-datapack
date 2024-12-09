tp @a[tag=game.in_game,sort=random,limit=4] 0 17 0
tp @a[team=spectator] 0 17 0

gamemode spectator @a[tag=game.in_game]

clear @a[tag=game.in_game]
effect clear @a[tag=game.in_game]
effect give @a[tag=game.in_game] resistance infinite 255 true
effect give @a[tag=game.in_game] saturation infinite 255 true
effect give @a[tag=game.in_game] regeneration infinite 255 true
effect give @a[tag=game.in_game] weakness infinite 255 true
effect give @a[tag=game.in_game] minecraft:blindness 1 20 true

function game:display/hints/display
schedule function game:int/phases/2_kit_selection/start_phase 5s