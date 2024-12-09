item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:100}}},custom_name='{"color":"red","italic":false,"text":"Back","font":"game:small_caps"}',item_model="game:arrows/right_arrow"]




execute unless score selected_map gamemode.settings matches 0 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/select_map {map_id:0}"}}},custom_name='{"color":"white","italic":false,"text":"Split","font":"game:small_caps"}',item_model="map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Abomat"}']]
execute if score selected_map gamemode.settings matches 0 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={navigator:{action:{command:""}}},custom_name='{"color":"green","italic":false,"text":"Split","font":"game:small_caps"}',item_model="game:navigator/map/filled_map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by Abomat and Zwakel"}']]

execute unless score selected_map gamemode.settings matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/select_map {map_id:1}"}}},custom_name='{"color":"white","italic":false,"text":"Magnet","font":"game:small_caps"}',item_model="map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl"}']]
execute if score selected_map gamemode.settings matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={navigator:{action:{command:""}}},custom_name='{"color":"green","italic":false,"text":"Magnet","font":"game:small_caps"}',item_model="game:navigator/map/filled_map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl"}']]

execute unless score selected_map gamemode.settings matches 2 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/select_map {map_id:2}"}}},custom_name='{"color":"white","italic":false,"text":"Parkour","font":"game:small_caps"}',item_model="map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl and ThatCuteOne"}']]
execute if score selected_map gamemode.settings matches 2 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:""}}},custom_name='{"color":"green","italic":false,"text":"Parkour","font":"game:small_caps"}',item_model="game:navigator/map/filled_map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl and ThatCuteOne"}']]

execute unless score selected_map gamemode.settings matches 3 run item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/select_map {map_id:3}"}}},custom_name='{"color":"white","italic":false,"text":"Balcony","font":"game:small_caps"}',item_model="map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl"}']]
execute if score selected_map gamemode.settings matches 3 run item replace entity @s hotbar.4 with carrot_on_a_stick[custom_data={navigator:{action:{command:""}}},custom_name='{"color":"green","italic":false,"text":"Balcony","font":"game:small_caps"}',item_model="game:navigator/map/filled_map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ru_bl"}']]

execute unless score selected_map gamemode.settings matches 4 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/select_map {map_id:4}"}}},custom_name='{"color":"white","italic":false,"text":"Pit","font":"game:small_caps"}',item_model="map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by LeoLeusch, sujuxi, ThatCuteOne and ru_bl"}']]
execute if score selected_map gamemode.settings matches 4 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:""}}},custom_name='{"color":"green","italic":false,"text":"Pit","font":"game:small_caps"}',item_model="game:navigator/map/filled_map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by LeoLeusch, sujuxi, ThatCuteOne and ru_bl"}']]

execute unless score selected_map gamemode.settings matches 5 run item replace entity @s hotbar.6 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/select_map {map_id:5}"}}},custom_name='{"color":"white","italic":false,"text":"Clover","font":"game:small_caps"}',item_model="map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ThatCuteOne and ru_bl"}']]
execute if score selected_map gamemode.settings matches 5 run item replace entity @s hotbar.6 with carrot_on_a_stick[custom_data={navigator:{action:{command:""}}},custom_name='{"color":"green","italic":false,"text":"Clover","font":"game:small_caps"}',item_model="game:navigator/map/filled_map",lore=['{"color":"light_purple","font":"game:small_caps","italic":false,"text":"made by ThatCuteOne and ru_bl"}']]



execute unless score selected_map gamemode.settings matches 6.. run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{page:301}}},custom_name='{"color":"green","italic":false,"text":"next page","font":"game:small_caps"}',item_model="game:arrows/left_arrow"]
execute if score selected_map gamemode.settings matches 6.. run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{page:301}}},custom_name='{"color":"green","italic":false,"text":"next page","font":"game:small_caps"}',item_model="game:arrows/left_arrow_blinking"]




item replace entity @s hotbar.7 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/3/randomize"}}},custom_name='{"color":"light_purple","italic":false,"text":"Select Random map","font":"game:small_caps"}',item_model="game:navigator/team/randomize"]