scoreboard players remove star_timer_red gamemode.settings 5
scoreboard players remove star_timer_blue gamemode.settings 5

advancement grant @a[scores={navigator.page=410}] only navigator:internal/player/trigger_page_reload

playsound game:ui.select master @s ~ ~ ~