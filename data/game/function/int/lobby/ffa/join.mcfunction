
effect clear @s

tp @s @e[type=armor_stand,sort=random,limit=1,tag=lobby.ffa_spawn]




scoreboard players reset @s gamemode.death
scoreboard players set @s lobby.ffa_kill 0


spawnpoint @s 56 58 54
function navigator:interface/player/disable_navigator
gamemode adventure @s
tag @s remove lobby.in_lobby
tag @s add lobby.in_ffa

tellraw @a[tag=lobby.in_ffa] [{"text":"[","color":"gold","font": "game:small_caps"},{"text":"Game","color":"gold","font": "game:small_caps"},{"text":"] "},{"selector":"@s","color":"gold","font": "game:small_caps"},{"text":" joined FFA","color":"green","font": "game:small_caps"}]
