data modify storage bpvp:temp custom_effects set from entity @s SelectedItem.components.minecraft:potion_contents.custom_effects
execute if data storage bpvp:temp custom_effects[0] run function bpvp:team_potions/effect_loop
item replace entity @s[gamemode=!creative] weapon.mainhand with air
advancement revoke @s only bpvp:team_potions/use_potion_mainhand
playsound entity.generic.drink player @a ~ ~ ~