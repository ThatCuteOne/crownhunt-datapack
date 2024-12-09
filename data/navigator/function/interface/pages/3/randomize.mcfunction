execute store result score selected_map temp run random value 0..10

execute if score selected_map temp = selected_map gamemode.settings run return run function navigator:interface/pages/3/randomize

scoreboard players operation selected_map gamemode.settings = selected_map temp

playsound game:ui.select master @s
advancement grant @a[scores={navigator.page=300..399}] only navigator:internal/player/trigger_page_reload