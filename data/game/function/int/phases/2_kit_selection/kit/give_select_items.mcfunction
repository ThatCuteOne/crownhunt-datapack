

item replace entity @s hotbar.0 from entity @e[tag=kit.selected,sort=arbitrary,limit=1] armor.head

tag @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] add temp
item replace entity @s hotbar.1 from entity @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] armor.head
tag @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] add temp
item replace entity @s hotbar.2 from entity @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] armor.head
tag @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] add temp
item replace entity @s hotbar.3 from entity @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] armor.head
tag @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] add temp
item replace entity @s hotbar.4 from entity @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] armor.head
tag @e[tag=kit.selected,tag=!temp,sort=arbitrary,limit=1] add temp
tag @e remove temp