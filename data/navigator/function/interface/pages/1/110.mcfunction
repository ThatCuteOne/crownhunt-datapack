item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:100}}},custom_name={"color":"red","italic":false,"text":"Back","font":"game:small_caps"},item_model="game:arrows/right_arrow"]

item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:100}}},custom_name={"color":"red","italic":false,"text":"Back","font":"game:small_caps"},item_model="game:arrows/right_arrow"]

tag @s add game.self

execute store result score temp temp if entity @a[team=Red]

execute if score temp temp matches ..1 run item replace entity @s[team=!Red] hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/1/110/join_red"}}},custom_name={"color":"red","italic":false,"text":"Join Red Team","font":"game:small_caps"},item_model="game:navigator/team/join_red_team"]
execute if score temp temp matches 2.. run item replace entity @s[team=!Red] hotbar.3 with carrot_on_a_stick[custom_data={navigator:{}},custom_name={"color":"red","italic":false,"text":"Red Team is Full","font":"game:small_caps"},item_model="game:navigator/team/red_team_full"]

execute store result score temp temp if entity @a[team=Blue]

execute if score temp temp matches ..1 run item replace entity @s[team=!Blue] hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/1/110/join_blue"}}},custom_name={"color":"blue","italic":false,"text":"Join Blue Team","font":"game:small_caps"},item_model="game:navigator/team/join_blue_team"]
execute if score temp temp matches 2.. run item replace entity @s[team=!Blue] hotbar.5 with carrot_on_a_stick[custom_data={navigator:{}},custom_name={"color":"blue","italic":false,"text":"Blue Team is Full","font":"game:small_caps"},item_model="game:navigator/team/blue_team_full"]

item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/1/110/join_spectator"}}},custom_name={"color":"light_purple","italic":false,"text":"Join Spectator","font":"game:small_caps"},item_model="ender_eye"]


scoreboard players set i navigator 0
execute as @a[team=Red] run function navigator:interface/pages/2/200/add_head_red
scoreboard players set i navigator 0
execute as @a[team=Blue] run function navigator:interface/pages/2/200/add_head_blue
tag @s remove game.self