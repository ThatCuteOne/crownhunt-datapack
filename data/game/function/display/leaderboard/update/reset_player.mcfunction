tag @s add game.self
$execute as @e[tag=leaderboard.$(name)] if score @s player_id = @e[tag=game.self,limit=1] player_id run function game:display/leaderboard/update/reset_item {name:"$(name)"}
tag @s remove game.self
