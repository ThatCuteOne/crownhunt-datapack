execute unless entity @s[tag=star] unless data entity @s Thrower run kill @s
execute on origin run tag @s add temp
data modify entity @s Owner set from entity @a[tag=temp,limit=1] UUID
data modify entity @s PickupDelay set value 0
execute at @a[tag=temp,limit=1] run tp ~ ~ ~
tag @e remove temp