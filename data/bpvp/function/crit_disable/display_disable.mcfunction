tag @s add bpvp.temp
playsound item.shield.break player @a[tag=!bpvp.temp] ~ ~ ~
playsound item.shield.block player @a[tag=!bpvp.temp] ~ ~ ~ 0.8
playsound entity.player.attack.weak player @a[tag=!bpvp.temp] ~ ~ ~

execute anchored eyes run particle minecraft:item{item:shield} ^ ^-0.4 ^0.2 0.4 0.5 0.4 0.1 15 force @a[tag=!bpvp.temp]
tag @e remove bpvp.temp
