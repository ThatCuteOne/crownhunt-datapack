$scoreboard players add star_timer_$(team).tick gamemode.timer 1
$execute if score star_timer_$(team).tick gamemode.timer matches 20 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.36 2
$execute store result bossbar star_timer_$(team) value run scoreboard players get star_timer_$(team) gamemode.timer

$execute if score star_timer_$(team).tick gamemode.timer matches 20 run scoreboard players remove star_timer_$(team) gamemode.timer 1
$execute if score star_timer_$(team).tick gamemode.timer matches 20 run scoreboard players add @a[tag=has_star] gamemode.stats.crown_seconds 1
$execute if score star_timer_$(team).tick gamemode.timer matches 20 run scoreboard players reset star_timer_$(team).tick gamemode.timer
$execute if score star_timer_$(team) gamemode.timer matches ..0 run function game:int/phases/4_end/start_phase