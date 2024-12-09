advancement revoke @s only bpvp:crit_disable/block_melee_damage
tag @s add bpvp.temp
# tag gets removed in next function if return is triggered
execute on attacker if items entity @s weapon.mainhand #minecraft:axes as @e[tag=bpvp.temp] run return run function bpvp:crit_disable/display_disable
tag @s remove bpvp.temp
execute on attacker unless predicate crit_lib:can_crit run return fail
execute if score @s bpvp.damage_blocked_by_shield matches ..15 run return fail

summon zombie ^ ^ ^100 {Tags:["bpvp.temp"],HandItems:[{id:"diamond_axe",Count:1b},{}]}
damage @s 0.01 mob_attack by @e[tag=bpvp.temp,limit=1]
kill @e[tag=bpvp.temp]
function bpvp:crit_disable/display_disable