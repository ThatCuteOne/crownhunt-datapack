$say $(10)
$say $(update_name)

$execute if score $(10) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 10
execute if entity @s[tag=temp] run return run tag @s remove temp

$execute if score $(9) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 9
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(8) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 8
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(7) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 7
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(6) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
execute if entity @s[tag=temp] run say 6
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(5) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 5
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(4) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 4
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(3) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 3
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(2) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 2
execute if entity @s[tag=temp] run return run tag @s remove temp


$execute if score $(1) leaderboard.$(update_name) < @s leaderboard.$(update_name) run tag @s add temp
$data modify entity @e[scores={leaderboard.$(update_name)=1},limit=1] text set value '{"selector":"@a[tag=temp]"}'
execute if entity @s[tag=temp] run say 1
execute if entity @s[tag=temp] run return run tag @s remove temp



