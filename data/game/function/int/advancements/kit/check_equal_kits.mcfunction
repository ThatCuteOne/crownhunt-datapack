data modify storage temp kit set value {}

execute as @a[team=Blue,limit=1,sort=nearest] run function game:int/advancements/kit/check_equal_kits/get_kit {path:"blue_1"}
execute as @a[team=Blue,limit=1,sort=furthest] run function game:int/advancements/kit/check_equal_kits/get_kit {path:"blue_2"}
execute as @a[team=Red,limit=1,sort=nearest] run function game:int/advancements/kit/check_equal_kits/get_kit {path:"red_1"}
execute as @a[team=Red,limit=1,sort=furthest] run function game:int/advancements/kit/check_equal_kits/get_kit {path:"red_2"}

function game:int/advancements/kit/check_equal_kits/check_equality with storage temp kit
