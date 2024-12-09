item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:100}}},custom_name='{"color":"red","italic":false,"text":"Back","font":"game:small_caps"}',custom_model_data=503]


item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={navigator:{action:{page:410}}},custom_name='[{"color":"white","italic":false,"text":"Change the Crown-holding Time","font":"game:small_caps"}]',custom_model_data=4001]

item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={navigator:{action:{page:420}}},custom_name='[{"color":"white","italic":false,"text":"Change the Respawn Time","font":"game:small_caps"}]',custom_model_data=4002]



item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{page:430}}},custom_name='[{"color":"red","italic":false,"text":"Reset Settings","font":"game:small_caps"}]',custom_model_data=4004]


execute if score crown_behavior_type gamemode.settings matches 1 run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/0.crown_behavior_type"}}},custom_name='[{"color":"light_purple","italic":false,"text":"Crown behavior: ","font":"game:small_caps"},{"color":"yellow","italic":false,"text":"Spawn in Middle","font":"game:small_caps"}]',custom_model_data=200]
execute if score crown_behavior_type gamemode.settings matches 2 run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/0.crown_behavior_type"}}},custom_name='[{"color":"light_purple","italic":false,"text":"Crown behavior: ","font":"game:small_caps"},{"color":"yellow","italic":false,"text":"Drop at Death Position","font":"game:small_caps"}]',custom_model_data=40001]
execute if score crown_behavior_type gamemode.settings matches 3 run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/0.crown_behavior_type"}}},custom_name='[{"color":"light_purple","italic":false,"text":"Crown behavior: ","font":"game:small_caps"},{"color":"yellow","italic":false,"text":"Award Killer","font":"game:small_caps"}]',custom_model_data=40002]

execute if score map_switcher_type gamemode.settings matches 0 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/cycle_type_setting"}}},custom_name='[{"color":"light_purple","italic":false,"text":"Map Switcher: ","font":"game:small_caps"},{"color":"yellow","italic":false,"text":"Disabled","font":"game:small_caps"}]',custom_model_data=4005]
execute if score map_switcher_type gamemode.settings matches 1 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/cycle_type_setting"}}},custom_name='[{"color":"light_purple","italic":false,"text":"Map Switcher: ","font":"game:small_caps"},{"color":"yellow","italic":false,"text":"After Game","font":"game:small_caps"}]',custom_model_data=4005]
execute if score map_switcher_type gamemode.settings matches 2 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/440/cycle_type_setting"}}},custom_name='[{"color":"light_purple","italic":false,"text":"Map Switcher: ","font":"game:small_caps"},{"color":"yellow","italic":false,"text":"After Round","font":"game:small_caps"}]',custom_model_data=4005]

item replace entity @s hotbar.6 with carrot_on_a_stick[custom_data={navigator:{action:{page:440}}},custom_name='[{"color":"white","italic":false,"text":"Change Map Switcher Whitelist","font":"game:small_caps"}]',custom_model_data=4006]
