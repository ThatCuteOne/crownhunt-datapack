tag @s add bpvp.self
execute as @e[tag=bpvp.armor_storage] if score @s bpvp.player_id = @e[tag=bpvp.self,limit=1] bpvp.player_id run tag @s add bpvp.temp

#item replace entity @s armor.head from entity @e[tag=bpvp.temp,limit=1] armor.head
item replace entity @s armor.chest from entity @e[tag=bpvp.temp,limit=1] armor.chest
item replace entity @s armor.legs from entity @e[tag=bpvp.temp,limit=1] armor.legs
item replace entity @s armor.feet from entity @e[tag=bpvp.temp,limit=1] armor.feet

attribute @s armor modifier remove game:armor_invis
attribute @s armor_toughness modifier remove game:armor_invis
attribute @s knockback_resistance modifier remove game:armor_invis

kill @e[tag=bpvp.temp]
tag @s remove bpvp.self
tag @s remove bpvp.armor_hidden

# for premature invis cancel
effect clear @s invisibility

advancement revoke @s only bpvp:attack_while_invisible
advancement revoke @s only bpvp:get_attacked_while_invisible