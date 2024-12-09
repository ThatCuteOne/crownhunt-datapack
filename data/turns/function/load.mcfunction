#declare storage data.player
#declare storage data.inventory

scoreboard objectives add first_load dummy




scoreboard objectives add temp dummy
scoreboard objectives add player_data dummy


execute unless score first_load first_load matches 1 run function turns:setup





tellraw @a {"text":"Inventory save & loading system Started","color":"red","underlined":true}



scoreboard players set first_load first_load 1

bossbar add star_timer_red {"text":"Red Timer","color":"red","bold":true}
bossbar set star_timer_red max 40
bossbar add star_timer_blue {"text":"Blue Timer","color":"blue","bold":true}
bossbar set star_timer_blue max 40