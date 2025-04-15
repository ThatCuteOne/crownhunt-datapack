clear @s
# range
execute if score @s kit.id matches 0 run function game:kits/archer
execute if score @s kit.id matches 1 run function game:kits/arbalist
#movement
execute if score @s kit.id matches 2 run function game:kits/acrobat
execute if score @s kit.id matches 3 run function game:kits/speedster
#tank
execute if score @s kit.id matches 4 run function game:kits/angel
execute if score @s kit.id matches 5 run function game:kits/knight
execute if score @s kit.id matches 6 run function game:kits/midas
execute if score @s kit.id matches 7 run function game:kits/tank
execute if score @s kit.id matches 8 run function game:kits/wither
# damage dealer
execute if score @s kit.id matches 9 run function game:kits/assassin
execute if score @s kit.id matches 10 run function game:kits/officer
execute if score @s kit.id matches 11 run function game:kits/creepermaster
execute if score @s kit.id matches 12 run function game:kits/poseidon
# support
execute if score @s kit.id matches 13 run function game:kits/alchemist
execute if score @s kit.id matches 14 run function game:kits/medic
execute if score @s kit.id matches 15 run function game:kits/viking
