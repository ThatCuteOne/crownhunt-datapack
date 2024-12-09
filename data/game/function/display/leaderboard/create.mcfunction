$summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["leaderboard.$(name)"]}
$data modify storage data.leaderboard name set value $(name) 
$scoreboard objectives add leaderboard.$(name) dummy
$scoreboard players reset get_id leaderboard.$(name)
$execute as @e[tag=leaderboard.$(name)] run scoreboard players operation @s leaderboard.id = get_id leaderboard.$(name)





function game:display/leaderboard/summon_displays with storage data.leaderboard