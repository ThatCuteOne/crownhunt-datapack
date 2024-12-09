scoreboard players set crown_behavior_type gamemode.settings 3
scoreboard players set star_timer_red gamemode.settings 40
scoreboard players set star_timer_blue gamemode.settings 40
scoreboard players set death_timer gamemode.settings 60
scoreboard players set map_switcher_type gamemode.settings 0

function navigator:interface/pages/4/440/select_all
stopsound @s master game:ui.select


scoreboard players set @s navigator.page 400
function navigator:internal/page/load_new
