execute if score sequence lobby.credits matches ..0 run scoreboard players set sequence lobby.credits 10



execute if score sequence lobby.credits matches 3 run summon text_display ~ ~ ~ {Rotation:[90f,0f],teleport_duration:2,billboard:"fixed",alignment:"center",Tags:["lobby.credits_display","new"],text:{"color":"gold","font":"game:small_caps","text":"-----------------"}}
execute if score sequence lobby.credits matches 2 run summon text_display ~ ~ ~ {Rotation:[90f,0f],teleport_duration:2,billboard:"fixed",alignment:"center",Tags:["lobby.credits_display","new"],text:{"color":"white","font":"game:title","text":"t"},background:0}
execute if score sequence lobby.credits matches 1 run summon text_display ~ ~ ~ {Rotation:[90f,0f],teleport_duration:2,billboard:"fixed",alignment:"center",Tags:["lobby.credits_display","new"],text:{"color":"gold","font":"game:small_caps","text":"-----------------"}}

execute as @e[tag=lobby.credits_display,tag=new,tag=!anim] run data modify entity @s Rotation[0] set from entity @n[tag=lobby.credits] Rotation[0]
execute as @e[tag=lobby.credits_display,tag=new,tag=!anim] run data merge entity @s {start_interpolation:-1,interpolation_duration:100,transformation:{scale:[0.0001f,0.0001f,0.0001f],translation:[0f,0f,0f]}}

scoreboard players remove sequence lobby.credits 1
execute if score sequence lobby.credits matches ..0 run scoreboard players add sequence.master lobby.credits 1