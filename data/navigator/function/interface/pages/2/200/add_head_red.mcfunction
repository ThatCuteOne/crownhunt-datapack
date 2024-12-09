scoreboard players add i navigator 1

summon armor_stand 0 0 0 {Tags:["game.temp"]}
loot replace entity @e[tag=game.temp,limit=1] armor.head loot game:navigator/get_player_head
data modify storage navigator:temp name set from entity @e[tag=game.temp,limit=1] ArmorItems[3].components.minecraft:profile.name

execute if score i navigator matches 1 run data modify storage navigator:temp slot set value "hotbar.2"
execute if score i navigator matches 2 run data modify storage navigator:temp slot set value "hotbar.1"

function navigator:interface/pages/2/replace_slot_with_head with storage navigator:temp

kill @e[tag=game.temp]