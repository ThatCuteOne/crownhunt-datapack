tag @s add game.temp
scoreboard players set i gamemode.general 2
$scoreboard players operation temp gamemode.general = @s leaderboard.$(name)
scoreboard players operation #temp player_id = @s player_id

$execute as @e[tag=leaderboard.$(name)] if score @s leaderboard.id = i gamemode.general run function game:display/leaderboard/update/check_item {name:"$(name)"}

tag @e remove game.temp


