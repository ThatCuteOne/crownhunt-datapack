$scoreboard players add get_id leaderboard.$(name) 1
$scoreboard players set @s leaderboard.$(name) 0
$scoreboard players operation @s leaderboard.id = get_id leaderboard.$(name)
data modify entity @s billboard set value "vertical"
$tag @s add leaderboard.$(name)
$execute if score @s leaderboard.id matches 1 run data modify entity @s text set value "$(name)"