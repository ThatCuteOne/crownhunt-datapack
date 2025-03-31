execute if score star_timer_red gamemode.settings matches 10..120 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/410/decrease"}}},custom_name={"color":"red","italic":false,"text":"-5s","font":"game:small_caps"},item_model="game:arrows/left_arrow"]
execute if score star_timer_red gamemode.settings matches 5 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_data={navigator:{}},custom_name={"color":"white","italic":false,"text":"Min","font":"game:small_caps"},item_model="game:arrows/left_arrow"]

execute if score star_timer_red gamemode.settings matches 5..115 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/410/increase"}}},custom_name={"color":"green","italic":false,"text":"+5s","font":"game:small_caps"},item_model="game:arrows/right_arrow"]
execute if score star_timer_red gamemode.settings matches 120 run item replace entity @s hotbar.5 with carrot_on_a_stick[custom_data={navigator:{}},custom_name={"color":"white","italic":false,"text":"Max","font":"game:small_caps"},item_model="game:arrows/right_arrow"]

execute store result storage temp num int 1 run scoreboard players get star_timer_red gamemode.settings
function navigator:interface/pages/4/410/display with storage temp
