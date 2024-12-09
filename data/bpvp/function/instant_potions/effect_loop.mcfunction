data modify storage bpvp:temp effect set from storage bpvp:temp custom_effects[0].id

execute store result score temp bpvp run data get storage bpvp:temp custom_effects[0].duration
scoreboard players operation temp bpvp /= #20 bpvp
execute store result storage bpvp:temp duration int 1 run scoreboard players get temp bpvp

execute store result storage bpvp:temp amplifier int 1 run data get storage bpvp:temp custom_effects[0].amplifier

data modify storage bpvp:temp temp set from storage bpvp:temp custom_effects[0].show_particles
execute if data storage bpvp:temp {temp:false} run data modify storage bpvp:temp hide_particles set value "true"
execute unless data storage bpvp:temp {temp:false} run data modify storage bpvp:temp hide_particles set value "false"

function bpvp:instant_potions/apply_effect with storage bpvp:temp
data remove storage bpvp:temp custom_effects[0]
execute if data storage bpvp:temp custom_effects[0] run function bpvp:instant_potions/effect_loop