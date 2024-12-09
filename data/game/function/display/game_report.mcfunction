execute if score red_score gamemode.general matches 5 run tellraw @s {"text":"------- Red Team Won The Game -------","color":"red","font": "game:small_caps"}
execute if score blue_score gamemode.general matches 5 run tellraw @s {"text":"------ Blue Team Won The Game ------","color":"blue","font": "game:small_caps"}
# stats
tellraw @s [{"text": "Stats:" ,"color": "white", "underlined": true, "font": "game:small_caps"}]
tellraw @s [{"text": "Kills: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"*","objective":"gamemode.stats.game_kills"},"color": "white"}]
tellraw @s [{"text": "Deaths: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"*","objective":"gamemode.stats.game_deaths"},"color": "white"}]
tellraw @s [{"text": "Time Holding Crown: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"*","objective":"gamemode.stats.crown_seconds"},"color": "white"},{"text": "s","color": "gray"}]
execute if entity @s[tag=game.in_game] run function game:levels/game_rewards
execute if entity @s[tag=game.in_game] run tellraw @s [{"text": "Experience Reward: " ,"color": "gray", "font": "game:small_caps"},{"text": "[+","color": "gold"},{"score":{"name":"xp_reward","objective":"temp"},"color": "gold"},{"text": "]","color": "gold"}]

tellraw @s ""
# settings
tellraw @s [{"text": "Settings:" ,"color": "white", "underlined": true, "font": "game:small_caps"}]
tellraw @s [{"text": "Crown-holding duration: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"star_timer_red","objective":"gamemode.settings"},"color": "white"}]
execute if score crown_behavior_type gamemode.settings matches 1 run tellraw @s [{"text": "Crown Behaviour: ","color": "gray","font": "game:small_caps"},{"text": "Spawn in Middle","color": "white"}]
execute if score crown_behavior_type gamemode.settings matches 2 run tellraw @s [{"text": "Crown Behaviour: ","color": "gray","font": "game:small_caps"},{"text": "Drop on Ground","color": "white"}]
execute if score crown_behavior_type gamemode.settings matches 3 run tellraw @s [{"text": "Crown Behaviour: ","color": "gray","font": "game:small_caps"},{"text": "Award to Killer","color": "white"}]
scoreboard players operation temp temp = death_timer gamemode.settings
scoreboard players set #20 temp 20
scoreboard players operation temp temp /= #20 temp
tellraw @s [{"text": "Respawn delay: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"temp","objective":"temp"},"color": "white"}]
execute if score selected_map gamemode.settings matches 0 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Split" ,"color": "white", "font": "game:small_caps"},{"text": " by Abomat","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 1 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Magnet" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 2 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Parkour" ,"color": "white", "font": "game:small_caps"},{"text": " by ThatCuteOne and ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 3 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Balcony" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 4 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Pit" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi, LeoLeusch, ThatCuteOne and ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 5 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Clover" ,"color": "white", "font": "game:small_caps"},{"text": " by ThatCuteOne and ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 6 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Mud" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 7 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Mechanism" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl and ThatCuteOne ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 8 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Pumpkin" ,"color": "white", "font": "game:small_caps"},{"text": " by ThatCuteOne ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 9 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Atrium" ,"color": "white", "font": "game:small_caps"},{"text": " by LeoLeusch ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 10 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Trident" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl and sujuxi ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 11 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Cubic" ,"color": "white", "font": "game:small_caps"},{"text": " by Lyne100 ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 12 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 13 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 14 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 15 run tellraw @s [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi ","color":"dark_gray"}]







execute if score red_score gamemode.general matches 5 run tellraw @s {"text":"------------------------------------","color": "red","font": "game:small_caps"}
execute if score blue_score gamemode.general matches 5 run tellraw @s {"text":"------------------------------------","color": "blue","font": "game:small_caps"}
