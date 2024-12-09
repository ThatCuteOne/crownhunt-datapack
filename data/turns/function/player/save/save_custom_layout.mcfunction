

$title @s actionbar [{"color":"green","font":"game:small_caps","text":"Successfully saved custom layout for "},{"color":"gold","font":"game:small_caps","text":"$(kit)"},{"color":"green","font":"game:small_caps","text":" kit"}]
playsound block.note_block.pling master @s
$data modify storage data.inventory player.inventory.$(player_id).$(kit) set from entity @s Inventory