execute as @a unless score @s bpvp.player_id matches -2147483648..2147483647 run function bpvp:assign_id


execute as @a[advancements={bpvp:crit_disable/block_melee_damage=true}] at @s run function bpvp:crit_disable/on_block_melee_damage
execute as @a[advancements={bpvp:crit_disable/block_explosion_damage=true}] at @s run function bpvp:crit_disable/on_block_explosion_damage
execute as @a[advancements={bpvp:crit_disable/block_projectile_damage=true}] at @s run function bpvp:crit_disable/on_block_projectile_damage
scoreboard players reset @a bpvp.damage_blocked_by_shield


execute as @a[advancements={bpvp:effects_changed=true}] at @s run function bpvp:armor_invisibility/effects_changed


execute as @a[scores={bpvp.used_enderpearl=1..}] at @s run function bpvp:custom_pearl/on_throw
execute as @e[tag=bpvp.custom_pearl.impact_pos] at @s unless predicate bpvp:on_enderpearl run function bpvp:custom_pearl/on_land
