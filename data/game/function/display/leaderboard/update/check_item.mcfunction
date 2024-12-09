# executes with
#   leaderboard name
#   @s: target item
#   @e[tag=game.temp]: score to insert

# if insert_score > temp:
#   temp -> text_provider
#   target -> temp
#   text_provider -> target
#   temp <=> target_score
#   insert_reference = target_reference
# goto: 1 as next item

$execute if score temp gamemode.general > @s leaderboard.$(name) run function game:display/leaderboard/update/update_item {name:"$(name)"}
execute if score i gamemode.general matches 11.. run return fail
scoreboard players add i gamemode.general 1
$execute as @e[tag=leaderboard.$(name)] if score @s leaderboard.id = i gamemode.general run function game:display/leaderboard/update/check_item {name:"$(name)"}
