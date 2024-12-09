execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby.credits"]}
execute at @e[tag=lobby.credits] run summon text_display ~ ~4 ~ {billboard:"fixed",teleport_duration:2,Tags:["lobby.credits"],text:'{"color":"gold","font":"game:small_caps","italic":false,"text":"Credits","underlined":true}'}
execute at @e[tag=lobby.credits,type=marker] run summon marker ^ ^4.12 ^-1.2 {Tags:["lobby.credits_kill","lobby.credits"]}
