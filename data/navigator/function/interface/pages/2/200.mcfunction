item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:100}}},custom_name='{"color":"red","italic":false,"text":"Back","font":"game:small_caps"}',custom_model_data=503]

tag @s add game.self

execute store result score temp temp if entity @a[team=Red]

execute if score temp temp matches ..1 run item replace entity @s[team=!Red] hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/2/join_red"}}},custom_name='{"color":"red","italic":false,"text":"Join Red Team","font":"game:small_caps"}',custom_model_data=30000]
item replace entity @s[team=Red] hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/2/leave"}}},custom_name='{"color":"dark_gray","italic":false,"text":"Leave Red Team","font":"game:small_caps"}',custom_model_data=30001]
execute if score temp temp matches 2.. run item replace entity @s[team=!Red] hotbar.3 with carrot_on_a_stick[custom_data={navigator:{}},custom_name='{"color":"red","italic":false,"text":"Red Team is Full","font":"game:small_caps"}',custom_model_data=2003]

execute store result score temp temp if entity @a[team=Blue]

execute if score temp temp matches ..1 run item replace entity @s[team=!Blue] hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/2/join_blue"}}},custom_name='{"color":"blue","italic":false,"text":"Join Blue Team","font":"game:small_caps"}',custom_model_data=30040]
item replace entity @s[team=Blue] hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/2/leave"}}},custom_name='{"color":"dark_gray","italic":false,"text":"Leave Blue Team","font":"game:small_caps"}',custom_model_data=30041]
execute if score temp temp matches 2.. run item replace entity @s[team=!Blue] hotbar.5 with carrot_on_a_stick[custom_data={navigator:{}},custom_name='{"color":"blue","italic":false,"text":"Blue Team is Full","font":"game:small_caps"}',custom_model_data=2005]

item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/2/empty_teams"}}},custom_name='{"color":"light_purple","italic":false,"text":"Randomize","font":"game:small_caps"}',custom_model_data=3103]



scoreboard players set i navigator 0
execute as @a[team=Red] run function navigator:interface/pages/2/200/add_head_red
scoreboard players set i navigator 0
execute as @a[team=Blue] run function navigator:interface/pages/2/200/add_head_blue
tag @s remove game.self