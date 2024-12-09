execute as @a[team=Blue,limit=1,sort=nearest] if predicate game:kits/is_damagedealer as @a[team=Blue,limit=1,sort=furthest] if predicate game:kits/is_damagedealer run advancement grant @a[team=Blue] only game:kit/common/all_damagedealer
execute as @a[team=Blue,limit=1,sort=nearest] if predicate game:kits/is_mobility as @a[team=Blue,limit=1,sort=furthest] if predicate game:kits/is_mobility run advancement grant @a[team=Blue] only game:kit/common/all_mobility
execute as @a[team=Blue,limit=1,sort=nearest] if predicate game:kits/is_ranged as @a[team=Blue,limit=1,sort=furthest] if predicate game:kits/is_ranged run advancement grant @a[team=Blue] only game:kit/common/all_ranged
execute as @a[team=Blue,limit=1,sort=nearest] if predicate game:kits/is_support as @a[team=Blue,limit=1,sort=furthest] if predicate game:kits/is_support run advancement grant @a[team=Blue] only game:kit/common/all_support
execute as @a[team=Blue,limit=1,sort=nearest] if predicate game:kits/is_tank as @a[team=Blue,limit=1,sort=furthest] if predicate game:kits/is_tank run advancement grant @a[team=Blue] only game:kit/common/all_tank
execute as @a[team=Blue,limit=1,sort=nearest] if predicate game:kits/is_kit_with_team_potion as @a[team=Blue,limit=1,sort=furthest] if predicate game:kits/is_kit_with_team_potion run advancement grant @a[team=Blue] only game:kit/common/all_kits_with_team_potion

