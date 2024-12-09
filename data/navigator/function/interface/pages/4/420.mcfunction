execute if score death_timer gamemode.settings matches 40..600 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/420/decrease"}}},custom_name='{"color":"red","italic":false,"text":"-1s","font":"game:small_caps"}',custom_model_data=504]
execute if score death_timer gamemode.settings matches 20 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{}},custom_name='{"color":"white","italic":false,"text":"Min","font":"game:small_caps"}',custom_model_data=504]

execute if score death_timer gamemode.settings matches 20..580 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/420/increase"}}},custom_name='{"color":"green","italic":false,"text":"+1s","font":"game:small_caps"}',custom_model_data=503]
execute if score death_timer gamemode.settings matches 600 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{}},custom_name='{"color":"white","italic":false,"text":"Max","font":"game:small_caps"}',custom_model_data=503]

execute store result storage temp num int 0.05 run scoreboard players get death_timer gamemode.settings
function navigator:interface/pages/4/420/display with storage temp
