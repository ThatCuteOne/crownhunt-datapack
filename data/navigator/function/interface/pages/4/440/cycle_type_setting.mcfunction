scoreboard players add map_switcher_type gamemode.settings 1
execute if score map_switcher_type gamemode.settings matches 3.. run scoreboard players set map_switcher_type gamemode.settings 0
advancement grant @a[scores={navigator.page=400}] only navigator:internal/player/trigger_page_reload

playsound game:ui.select master @s ~ ~ ~