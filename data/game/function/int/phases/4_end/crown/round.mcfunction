execute if score star_timer_red gamemode.timer matches ..0 run function game:int/phases/4_end/win/round/red
execute if score star_timer_blue gamemode.timer matches ..0 run function game:int/phases/4_end/win/round/blue

# advancements
execute as @a[tag=game.in_game] if entity @s[tag=has_star] run scoreboard players operation @s leaderboard.distance_walked_with_crown += @s gamemode.advancements.crown_walking
execute as @a[tag=game.in_game] if entity @s[tag=has_star] run scoreboard players operation @s leaderboard.distance_walked_with_crown += @s gamemode.advancements.crown_sprinting
execute as @a[tag=game.in_game] if score @s leaderboard.distance_walked_with_crown matches 1000000.. run advancement grant @s only game:general/common/walk_10k_with_crown
execute as @a[tag=game.in_game] if score @s leaderboard.distance_walked_with_crown matches 2500000.. run advancement grant @s only game:general/rare/walk_25k_with_crown
execute as @a[tag=game.in_game] if score @s leaderboard.distance_walked_with_crown matches 50000000.. run advancement grant @s only game:general/rare/walk_50k_with_crown
execute as @a[tag=game.in_game] if score @s leaderboard.distance_walked_with_crown matches 10000000.. run advancement grant @s only game:general/epic/walk_100k_with_crown