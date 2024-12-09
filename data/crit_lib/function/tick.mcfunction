execute as @a[tag=crit_lib.can_crit_while_sprinting] at @s run function crit_lib:player
execute if entity @a[tag=crit_lib.can_crit_while_sprinting] run schedule function crit_lib:tick 1t