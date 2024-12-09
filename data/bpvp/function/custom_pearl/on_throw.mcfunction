summon marker ~ ~ ~ {Tags:["bpvp.custom_pearl.impact_pos","bpvp.new"]}
execute as @e[type=ender_pearl,tag=!bpvp.custom_pearl.modified,limit=1,sort=nearest] run ride @e[tag=bpvp.new,limit=1] mount @s
scoreboard players operation @e[tag=bpvp.new,limit=1] bpvp.player_id = @s bpvp.player_id
tag @e remove bpvp.new
scoreboard players reset @s bpvp.used_enderpearl