playsound minecraft:entity.ender_dragon.growl master @s
title @s actionbar {"color":"red","font":"game:small_caps","text":"Are you sure you want to reset the Layout?"}
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/5/520/reset"}}},custom_name='[{"color":"white","italic":false,"text":"I am sure","font":"game:small_caps"}]',item_model="game:navigator/settings/timer_settings/complete"]
item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/5/520/cancel"}}},custom_name='[{"color":"white","italic":false,"text":"Cancel","font":"game:small_caps"}]',item_model="game:navigator/settings/cancel"]
