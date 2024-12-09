scoreboard objectives add bpvp dummy
scoreboard objectives add bpvp.damage_blocked_by_shield custom:damage_blocked_by_shield
scoreboard objectives add bpvp.player_id dummy
scoreboard objectives add bpvp.used_enderpearl used:ender_pearl

##constants
# bpvp:instant_potions/effect_loop
scoreboard players set #20 bpvp 20

#declare storage bpvp:temp

tellraw @a {"text":"bpvp Loaded","color":"gold"}