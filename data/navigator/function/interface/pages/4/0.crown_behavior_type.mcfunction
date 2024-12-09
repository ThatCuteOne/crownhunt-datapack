scoreboard players add crown_behavior_type gamemode.settings 1
execute if score crown_behavior_type gamemode.settings matches 4.. run scoreboard players set crown_behavior_type gamemode.settings 1
advancement grant @a[scores={navigator.page=400}] only navigator:internal/player/trigger_page_reload
playsound game:ui.select master @s