summon armor_stand 0 0 0 {Tags:["bpvp.temp"],Invisible:1b,Marker:1b,NoGravity:1b}
item replace entity @e[tag=bpvp.temp] armor.head from entity @s weapon.offhand
data modify storage bpvp:temp custom_effects set from entity @e[tag=bpvp.temp,limit=1] ArmorItems[3].components.minecraft:potion_contents.custom_effects
kill @e[tag=bpvp.temp]
execute if data storage bpvp:temp custom_effects[0] run function bpvp:instant_potions/effect_loop
item replace entity @s[gamemode=!creative] weapon.offhand with air

advancement revoke @s only bpvp:instant_potions/use_potion_offhand

playsound entity.generic.drink player @a ~ ~ ~

function #bpvp:on_use_instant_potion