$execute store result score selected_map gamemode.settings run data get storage game:map_switcher maps[$(map)].id
$data remove storage game:map_switcher maps[$(map)]
execute store result score temp temp run data get storage game:map_switcher maps
execute if score temp temp matches 0 run data modify storage game:map_switcher maps set from storage game:map_switcher whitelist
