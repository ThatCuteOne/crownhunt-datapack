tag @s add temp

execute on origin if entity @s[tag=player.temp] run kill @e[type=item,tag=temp]


tag @s remove temp