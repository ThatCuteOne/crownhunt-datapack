execute on origin if entity @s[scores={navigator.page=510}] run function game:int/lobby/layout/reload
execute on origin unless entity @s[scores={navigator.page=510}] run return fail

kill @s