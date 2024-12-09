$data modify storage game:map_switcher whitelist append value {id:$(map)}
advancement grant @a[scores={navigator.page=440..449}] only navigator:internal/player/trigger_page_reload

playsound game:ui.select master @s ~ ~ ~

data modify storage game:map_switcher maps set from storage game:map_switcher whitelist