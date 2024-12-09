# advancements
execute if score @s gamemode.health matches 20 run advancement grant @s only game:general/epic/kill_with_10_hearts
execute if score @s gamemode.health matches 1 run advancement grant @s only game:general/epic/kill_with_.5_hearts
execute if score @s leaderboard.Kills matches 50.. run advancement grant @s only game:general/common/kill_50
execute if score @s leaderboard.Kills matches 100.. run advancement grant @s only game:general/rare/kill_100
execute if score @s leaderboard.Kills matches 500.. run advancement grant @s only game:general/rare/kill_500
execute if score @s leaderboard.Kills matches 1000.. run advancement grant @s only game:general/epic/kill_1000
scoreboard players add @s gamemode.advancements.round_kills 1
execute if score round_time gamemode.timer matches ..300 if score @s gamemode.advancements.round_kills matches 2.. run advancement grant @s only game:general/rare/two_kills_after_round_start
execute if score @s gamemode.advancements.time_since_last_kill matches ..20 if entity @s[tag=Crossbow] run advancement grant @s only game:kit/rare/crossbow_two_kills_1_sec
execute if score @s gamemode.advancements.time_since_last_kill matches ..100 run advancement grant @s only game:general/rare/two_kills_in_5_sec
scoreboard players reset @s gamemode.advancements.time_since_last_kill

# logic
scoreboard players add @s leaderboard.Kills 1
scoreboard players remove @s gamemode.kills 1
execute if score @s gamemode.kills matches 1.. run function game:int/phases/3_game/kill
