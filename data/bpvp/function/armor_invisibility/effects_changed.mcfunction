execute unless entity @s[tag=bpvp.armor_hidden] if data entity @s active_effects[{id:"minecraft:invisibility"}] run function bpvp:armor_invisibility/hide_armor
execute if entity @s[tag=bpvp.armor_hidden] unless data entity @s active_effects[{id:"minecraft:invisibility"}] run function bpvp:armor_invisibility/show_armor

advancement revoke @s only bpvp:effects_changed