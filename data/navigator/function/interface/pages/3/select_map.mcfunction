$scoreboard players set selected_map gamemode.settings $(map_id)
advancement grant @a[scores={navigator.page=300..399}] only navigator:internal/player/trigger_page_reload
playsound game:ui.select master @s
