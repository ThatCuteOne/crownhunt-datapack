execute store result score temp temp if entity @a[nbt={active_effects:[{id:"minecraft:wither"}]},team=Blue]
execute if score temp temp matches 2.. run advancement grant @a[team=Red,scores={kit.id=8}] only game:kit/rare/epidemic
execute store result score temp temp if entity @a[nbt={active_effects:[{id:"minecraft:wither"}]},team=Red]
execute if score temp temp matches 2.. run advancement grant @a[team=Blue,scores={kit.id=8}] only game:kit/rare/epidemic

advancement revoke @a only game:trigger/effects_changed.wither
