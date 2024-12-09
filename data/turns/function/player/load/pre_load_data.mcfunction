clear @s

$execute if data storage data.inventory player.inventory.$(player_id).$(kit) run data modify storage data.inventory temp set from storage data.inventory player.inventory.$(player_id).$(kit)
$execute unless data storage data.inventory player.inventory.$(player_id).$(kit) run data modify storage data.inventory temp set from storage data.inventory player.inventory.$(kit)
$tellraw @s [{"text":"[Game] ","font":"game:small_caps","color":"gold"},{"text":"You selected the $(kit) kit","font":"game:small_caps","color":"green"}]


execute at @s run playsound game:ui.select master @s ~ ~ ~ 1 1





#-----debug commands-----#
#$say pre$(kit)
#say test
#tellraw @a {"nbt":"selected.kit","storage":"data.player"}
#------------------------#

function turns:player/load/load_inventory


#$say $(kit)

tag @s add selected_kit

# advancements
$execute if entity @s[tag=game.in_game] run advancement grant @s only game:kit/rare/play_every_kit $(kit)