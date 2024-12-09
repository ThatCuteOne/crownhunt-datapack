scoreboard players add blue_score gamemode.general 1
title @a[tag=game.in_game] title [{"text":"Blue team ","color":"blue","italic":false},{"text":"won the round","color":"gold"}]
title @a[team=spectator] title [{"text":"Blue team ","color":"blue","italic":false},{"text":"won the round","color":"gold"}]
scoreboard players add @a[team=Blue] leaderboard.rounds_won 1

# advancements
advancement grant @a[tag=game.in_game,advancements={game:trigger/wear_armor=false},team=Blue] only game:general/rare/win_without_armor
execute if score star_timer_red gamemode.timer matches 1 run advancement grant @a[team=Blue] only game:general/rare/win_with_one_sec
execute if score star_timer_red gamemode.timer matches 40 run advancement grant @a[team=Red] only game:general/common/sleepy_joe
execute as @a[team=Blue] run function game:int/advancements/kit/win_with_kit
advancement grant @a[team=Blue,advancements={game:trigger/assasin_gain_invis=false},scores={kit.id=9}] only game:kit/rare/assasin_no_invis
execute as @a[tag=game.in_game] unless score @s gamemode.move_detect.jump matches -2147483648..2147483647 unless score @s gamemode.move_detect.walk matches -2147483648..2147483647 unless score @s gamemode.move_detect.sprint matches -2147483648..2147483647 run advancement grant @s[team=Blue] only game:general/rare/win_without_moving

execute as @a if score @s leaderboard.rounds_won matches 50.. run advancement grant @s only game:general/common/win_50_rounds
execute as @a if score @s leaderboard.rounds_won matches 100.. run advancement grant @s only game:general/common/win_100_rounds
execute as @a if score @s leaderboard.rounds_won matches 500.. run advancement grant @s only game:general/rare/win_500_rounds
execute as @a if score @s leaderboard.rounds_won matches 1500.. run advancement grant @s only game:general/epic/win_1500_rounds

execute if score selected_map gamemode.settings matches 0 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 0
execute if score selected_map gamemode.settings matches 1 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 1
execute if score selected_map gamemode.settings matches 2 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 2
execute if score selected_map gamemode.settings matches 3 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 3
execute if score selected_map gamemode.settings matches 4 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 4
execute if score selected_map gamemode.settings matches 5 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 5
execute if score selected_map gamemode.settings matches 6 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 6
execute if score selected_map gamemode.settings matches 7 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 7
execute if score selected_map gamemode.settings matches 8 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 8
execute if score selected_map gamemode.settings matches 9 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 9
execute if score selected_map gamemode.settings matches 10 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 10
execute if score selected_map gamemode.settings matches 11 run advancement grant @a[team=Blue] only game:general/epic/win_on_all_maps 11

execute if score selected_map gamemode.settings matches 0 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 0
execute if score selected_map gamemode.settings matches 1 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 1
execute if score selected_map gamemode.settings matches 2 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 2
execute if score selected_map gamemode.settings matches 3 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 3
execute if score selected_map gamemode.settings matches 4 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 4
execute if score selected_map gamemode.settings matches 5 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 5
execute if score selected_map gamemode.settings matches 6 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 6
execute if score selected_map gamemode.settings matches 7 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 7
execute if score selected_map gamemode.settings matches 8 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 8
execute if score selected_map gamemode.settings matches 9 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 9
execute if score selected_map gamemode.settings matches 10 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 10
execute if score selected_map gamemode.settings matches 11 run advancement grant @a[team=Red] only game:general/common/lose_on_all_maps 11