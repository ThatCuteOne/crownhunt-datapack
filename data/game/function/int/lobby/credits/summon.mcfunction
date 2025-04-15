execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby.credits"]}
data modify entity @n[tag=lobby.credits] Rotation[0] set from entity @s Rotation[0]
execute at @e[tag=lobby.credits] run summon text_display ~ ~4 ~ {billboard:"fixed",teleport_duration:2,Tags:["lobby.credits"],text:{"color":"gold","font":"game:small_caps","italic":false,"text":"Credits","underlined":true},alignment:"center"}
execute at @e[tag=lobby.credits,type=marker] positioned ^ ^ ^ run summon marker ^-1.2 ^4.12 ^ {Tags:["lobby.credits_kill"]}
