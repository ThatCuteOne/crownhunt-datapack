item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:440}}},custom_name='{"color":"red","italic":false,"text":"Back","font":"game:small_caps"}',custom_model_data=503]

execute if score whitelist.select_toggle gamemode.general matches 0 run item replace entity @s hotbar.7 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_all"}}},custom_name='{"color":"gray","italic":false,"text":"Select all Maps","font":"game:small_caps"}',custom_model_data=2001]
execute if score whitelist.select_toggle gamemode.general matches 1 run item replace entity @s hotbar.7 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_all"}}},custom_name='{"color":"white","italic":false,"text":"Deselect all Maps","font":"game:small_caps"}',custom_model_data=2000]



execute unless data storage game:map_switcher whitelist[{id:11}] run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_map {map:11}"}}},custom_name='{"color":"white","italic":false,"text":"Cubic","font":"game:small_caps"}',custom_model_data=2000,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Lyne100"}']]
execute if data storage game:map_switcher whitelist[{id:11}] run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_map {map:11}"}}},custom_name='{"color":"green","italic":false,"text":"Cubic","font":"game:small_caps"}',custom_model_data=2001,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Lyne100"}']]

execute unless data storage game:map_switcher whitelist[{id:6}] run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_map {map:6}"}}},custom_name='{"color":"white","italic":false,"text":"Mud","font":"game:small_caps"}',custom_model_data=2000,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by sujuxi"}']]
execute if data storage game:map_switcher whitelist[{id:6}] run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_map {map:6}"}}},custom_name='{"color":"green","italic":false,"text":"Mud","font":"game:small_caps"}',custom_model_data=2001,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by sujuxi"}']]

execute unless data storage game:map_switcher whitelist[{id:7}] run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_map {map:7}"}}},custom_name='{"color":"white","italic":false,"text":"Mechanism","font":"game:small_caps"}',custom_model_data=2000,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl and ThatCuteOne"}']]
execute if data storage game:map_switcher whitelist[{id:7}] run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_map {map:7}"}}},custom_name='{"color":"green","italic":false,"text":"Mechanism","font":"game:small_caps"}',custom_model_data=2001,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl and ThatCuteOne"}']]

execute unless data storage game:map_switcher whitelist[{id:8}] run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_map {map:8}"}}},custom_name='{"color":"white","italic":false,"text":"Pumpkin","font":"game:small_caps"}',custom_model_data=2000,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Silberhecht"}']]
execute if data storage game:map_switcher whitelist[{id:8}] run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_map {map:8}"}}},custom_name='{"color":"green","italic":false,"text":"Pumpkin","font":"game:small_caps"}',custom_model_data=2001,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Silberhecht"}']]

execute unless data storage game:map_switcher whitelist[{id:9}] run item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_map {map:9}"}}},custom_name='{"color":"white","italic":false,"text":"Atrium","font":"game:small_caps"}',custom_model_data=2000,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Sujuxi"}']]
execute if data storage game:map_switcher whitelist[{id:9}] run item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_map {map:9}"}}},custom_name='{"color":"green","italic":false,"text":"Atrium","font":"game:small_caps"}',custom_model_data=2001,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Sujuxi"}']]

execute unless data storage game:map_switcher whitelist[{id:10}] run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/select_map {map:10}"}}},custom_name='{"color":"white","italic":false,"text":"Trident","font":"game:small_caps"}',custom_model_data=2000,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Sujuxi and ru_bl"}']]
execute if data storage game:map_switcher whitelist[{id:10}] run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/deselect_map {map:10}"}}},custom_name='{"color":"green","italic":false,"text":"Trident","font":"game:small_caps"}',custom_model_data=2001,lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Sujuxi and ru_bl"}']]
