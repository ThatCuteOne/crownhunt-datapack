summon armor_stand 0 0 0 {Tags:["bpvp.armor_storage","bpvp.new"],Invisible:1b,Marker:1b,NoGravity:1b}

#item replace entity @e[tag=bpvp.new] armor.head from entity @s armor.head
item replace entity @e[tag=bpvp.new] armor.chest from entity @s armor.chest
item replace entity @e[tag=bpvp.new] armor.legs from entity @s armor.legs
item replace entity @e[tag=bpvp.new] armor.feet from entity @s armor.feet

scoreboard players operation @e[tag=bpvp.new] bpvp.player_id = @s bpvp.player_id

tag @e remove bpvp.new

execute store result storage bpvp:temp armor int 1 run attribute @s armor get
execute store result storage bpvp:temp armor_toughness int 1 run attribute @s armor_toughness get
execute store result storage bpvp:temp knockback_resistance int 1 run attribute @s knockback_resistance get

function bpvp:armor_invisibility/set_armor with storage bpvp:temp

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

tag @s add bpvp.armor_hidden
