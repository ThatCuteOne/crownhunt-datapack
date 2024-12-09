tag @s add bpvp.self
execute as @a if score @s bpvp.player_id = @e[tag=bpvp.self,limit=1] bpvp.player_id align xz rotated as @s run tp ~0.5 ~ ~0.5
kill @s