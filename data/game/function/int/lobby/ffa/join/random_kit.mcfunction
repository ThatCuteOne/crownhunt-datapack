function game:int/gamestart/kit/summon_kit_entity
function turns:player/load/get_id with entity @e[tag=kit.selector,limit=1,sort=random] ArmorItems[3].tag
kill @e[tag=kit.selector]
