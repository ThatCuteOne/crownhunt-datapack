advancement revoke @s only bpvp:crit_disable/block_explosion_damage
execute if score @s bpvp.damage_blocked_by_shield matches ..15 run return fail

summon zombie ^ ^ ^100 {Tags:["bpvp.temp"],equipment:{mainhand:{id:"diamond_axe"}}}
damage @s 0.01 mob_attack by @e[tag=bpvp.temp,limit=1]
kill @e[tag=bpvp.temp]

function bpvp:crit_disable/display_disable