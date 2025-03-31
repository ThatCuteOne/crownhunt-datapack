summon armor_stand 0 0 0 {Tags:["game.temp"]}
$item replace entity @e[tag=game.temp] armor.head with carrot_on_a_stick[custom_data={navigator:{action:{page:400}}},custom_name={"color":"white","italic":false,"text":"$(num)s","font":"game:small_caps"},item_model="game:navigator/settings/timer_settings/complete"]
data modify entity @e[tag=game.temp,limit=1] equipment.head.count set from storage temp num
item replace entity @s hotbar.4 from entity @e[tag=game.temp,limit=1] armor.head

kill @e[tag=game.temp]