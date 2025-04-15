clear @s
$scoreboard players set @s kit.id $(kit_id)
function game:int/kit_loading/give
scoreboard players reset @s carrot_on_a_stick.trigger
tag @s add selected_kit


