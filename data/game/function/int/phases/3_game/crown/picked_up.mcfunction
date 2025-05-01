clear @s carved_pumpkin
item replace entity @s armor.head with carved_pumpkin[custom_name={"color":"gold","italic":false,"text":"Crown of Time"},item_model="game:crown",custom_data={star:1b},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false,tooltip_display={hidden_components:["enchantments"]}] 1
tag @s add has_star
tellraw @a[tag=game.in_game] [{"text":"[Game] ","font":"game:small_caps","color":"light_purple","italic":false},{"selector":"@s","font":"game:small_caps","italic":false},{"text":" has picked up the Star","font":"game:small_caps","italic":false}]
effect give @s glowing infinite 0 true
scoreboard players reset @s game.carved_pumpkin.picked_up
playsound entity.player.levelup master @s ~ ~ ~ 100000

scoreboard players add @s gamemode.picked_up_star 1
scoreboard players reset @s gamemode.advancements.crown_walking
scoreboard players reset @s gamemode.advancements.crown_sprinting

execute if entity @s[team=Blue] run playsound minecraft:block.note_block.didgeridoo master @a[team=Red]
execute if entity @s[team=Red] run playsound minecraft:block.note_block.didgeridoo master @a[team=Blue]

execute if entity @s[team=Blue] run playsound minecraft:block.note_block.flute master @a[team=Blue]
execute if entity @s[team=Red] run playsound minecraft:block.note_block.flute master @a[team=Red]

execute if entity @s[team=Blue] run bossbar set star_timer_blue visible true
execute if entity @s[team=Blue] run bossbar set star_timer_red visible false
execute if entity @s[team=Red] run bossbar set star_timer_red visible true
execute if entity @s[team=Red] run bossbar set star_timer_blue visible false