$data modify storage temp kit.$(blue_1)$(blue_2) set value true
$execute if data storage temp {kit:{$(red_1)$(red_2):true}} run advancement grant @a[tag=game.in_game] only game:kit/common/same_kits
$execute if data storage temp {kit:{$(red_2)$(red_1):true}} run advancement grant @a[tag=game.in_game] only game:kit/common/same_kits

