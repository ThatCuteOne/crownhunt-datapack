
$item replace entity @s armor.head from entity @e[tag=ffa.join.$(kit),limit=1] armor.head
$item replace entity @s armor.chest from entity @e[tag=ffa.join.$(kit),limit=1] armor.chest
$item replace entity @s armor.legs from entity @e[tag=ffa.join.$(kit),limit=1] armor.legs
$item replace entity @s armor.feet from entity @e[tag=ffa.join.$(kit),limit=1] armor.feet
$item replace entity @s weapon.offhand from entity @e[tag=ffa.join.$(kit),limit=1] weapon.offhand
$item replace entity @s weapon.mainhand from entity @e[tag=ffa.join.$(kit),limit=1] weapon.mainhand
$execute as @e[tag=lobby.kit_view.kit,type=text_display] run data modify entity @s text set value '{text:"$(kit)","color":"white","underlined":true,"font":"game:small_caps"}'