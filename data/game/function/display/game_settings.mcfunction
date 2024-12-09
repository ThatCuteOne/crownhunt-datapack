tellraw @a {"text":"---------- Starting Game ----------","font": "game:small_caps"}
tellraw @a [{"text": "settings:" ,"color": "white", "underlined": true, "font": "game:small_caps"}]
tellraw @a [{"text": "Crown-holding duration: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"star_timer_red","objective":"gamemode.settings"},"color": "white"}]
execute if score crown_behavior_type gamemode.settings matches 1 run tellraw @a [{"text": "Crown Behaviour: ","color": "gray","font": "game:small_caps"},{"text": "Spawn in Middle","color": "white"}]
execute if score crown_behavior_type gamemode.settings matches 2 run tellraw @a [{"text": "Crown Behaviour: ","color": "gray","font": "game:small_caps"},{"text": "Drop on Ground","color": "white"}]
execute if score crown_behavior_type gamemode.settings matches 3 run tellraw @a [{"text": "Crown Behaviour: ","color": "gray","font": "game:small_caps"},{"text": "Award to Killer","color": "white"}]
scoreboard players operation temp temp = death_timer gamemode.settings
scoreboard players set #20 temp 20
scoreboard players operation temp temp /= #20 temp
tellraw @a [{"text": "Respawn delay: " ,"color": "gray", "font": "game:small_caps"},{"score":{"name":"temp","objective":"temp"},"color": "white"}]

execute if score selected_map gamemode.settings matches 0 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Split" ,"color": "white", "font": "game:small_caps"},{"text": " by Abomat","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 1 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Magnet" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 2 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Bridge" ,"color": "white", "font": "game:small_caps"},{"text": " by ThatCuteOne","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 3 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Balcony" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 4 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Pit" ,"color": "white", "font": "game:small_caps"},{"text": " by Sujuxi, LeoLeusch, ThatCuteOne, and ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 5 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Clover" ,"color": "white", "font": "game:small_caps"},{"text": " by ThatCuteOne and ru_bl","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 6 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Mud" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 7 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Mechanisim" ,"color": "white", "font": "game:small_caps"},{"text": " by ru_bl and ThatCuteeOne","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 8 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Pumkin" ,"color": "white", "font": "game:small_caps"},{"text": " by ThatCuteOne","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 9 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Atrium" ,"color": "white", "font": "game:small_caps"},{"text": " by LeoLeusch","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 10 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Trident" ,"color": "white", "font": "game:small_caps"},{"text": " by sujuxi and ru_bl ","color":"dark_gray"}]
execute if score selected_map gamemode.settings matches 11 run tellraw @a [{"text": "Map: ","color": "gray","font": "game:small_caps"},{"text": "Cubic" ,"color": "white", "font": "game:small_caps"},{"text": " by Lyne100 ","color":"dark_gray"}]
tellraw @a ""
tellraw @a [{"text": "Blue Team: " ,"color": "gray", "font": "game:small_caps"}]
tellraw @a [{"selector": "@a[team=Blue]" ,"color": "blue", "font": "game:small_caps"}]
tellraw @a [{"text": "            VS" ,"color": "white", "font": "game:small_caps"}]
tellraw @a [{"text": "                Red Team: " ,"color": "gray", "font": "game:small_caps"}]
tellraw @a [{"text": "                "},{"selector": "@a[team=Red]" ,"color": "red", "font": "game:small_caps"}]
tellraw @a {"text":"-----------------------------------","font": "game:small_caps"}


#
# Blue Team
# ru_bl
#            VS
#                Red Team   
#                lyne100
# 