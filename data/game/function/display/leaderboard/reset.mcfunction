$scoreboard players reset * leaderboard.$(name)
$scoreboard players set @e[tag=leaderboard.$(name)] leaderboard.$(name) 0
$execute as @e[tag=leaderboard.$(name),scores={leaderboard.id=2..}] run data modify entity @s text set value '""'
$scoreboard players reset @e[tag=leaderboard.$(name)] player_id

