$execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {DisabledSlots:4144959,CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["$(kit)","ffa.join.$(kit)"],Rotation:[$(yaw)F,$(pitch)F],CustomName:'{"text":"$(kit)","font":"game:small_caps","italic":false,"underlined":true,"color": "$(color)"}'}
$execute align xyz run summon interaction ~0.5 ~ ~0.5 {height:2f,width:1f,Tags:["$(kit)","ffa.join","ffa.join.$(kit)"]}

$execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ffa.join.$(kit)] run function turns:player/load/pre_load_data {kit:"$(kit)",player_id:-1}


