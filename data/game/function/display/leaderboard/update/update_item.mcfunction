# executes with
#   leaderboard name
#   @s: target item
#   @e[tag=game.temp]: score to insert

scoreboard players operation #temp player_id >< @s player_id

$scoreboard players operation temp gamemode.general >< @s leaderboard.$(name)
$function game:display/leaderboard/update/text_provider {name:"$(name)"}

data modify storage temp temp set from entity @s text
data modify entity @s text set from storage temp text
tag @e remove game.temp
tag @s add game.temp