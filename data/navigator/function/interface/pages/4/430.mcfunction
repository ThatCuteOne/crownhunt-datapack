playsound minecraft:entity.ender_dragon.growl master @s
title @s actionbar {"color":"red","font":"game:small_caps","text":"Are you sure you want to reset the settings?"}
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={navigator:{action:{command:"function navigator:interface/pages/4/430/reset_settings"}}},custom_name='[{"color":"white","italic":false,"text":"I am sure","font":"game:small_caps"}]',custom_model_data=410]
item replace entity @s hotbar.8 with carrot_on_a_stick[custom_data={navigator:{action:{page:400}}},custom_name='[{"color":"white","italic":false,"text":"Cancel","font":"game:small_caps"}]',custom_model_data=430]
