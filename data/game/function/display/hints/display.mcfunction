execute store result score rand temp run random value 0..17
title @a[tag=game.in_game] times 0 100 10
execute if score rand temp matches 0 run title @a[tag=game.in_game] subtitle {"text":"You can disable the shield of your enemy with a crit","color":"white"}
execute if score rand temp matches 1 run title @a[tag=game.in_game] subtitle {"text":"Blocking a projectile or explosion will disable your shield","color":"white"}
execute if score rand temp matches 2 run title @a[tag=game.in_game] subtitle {"text":"Creepers can propell eachother for maximal chaos","color":"white"}
execute if score rand temp matches 3 run title @a[tag=game.in_game] subtitle {"text":"Your armor also turns invisible when you do","color":"white"}
execute if score rand temp matches 4 run title @a[tag=game.in_game] subtitle {"text":"You loose your invisibility when attacking or taking damage","color":"white"}
execute if score rand temp matches 5 run title @a[tag=game.in_game] subtitle {"text":"If you don't select any kit one will be chosen at random","color":"white"}
execute if score rand temp matches 6 run title @a[tag=game.in_game] subtitle {"text":"You can modify various aspects of the game in the settings menu","color":"white"}
execute if score rand temp matches 7 run title @a[tag=game.in_game] subtitle [{"text":"You've completed ","color":"white"},{"score":{"name": "*","objective": "gamemode.completed_advancements"}},{"text": "/76 Advancements"}]
execute if score rand temp matches 7 run title @a[tag=game.in_game] subtitle [{"text":"You've collected ","color":"white"},{"score":{"name": "*","objective": "gamemode.experience"}},{"text": " Experience in total"}]
execute if score rand temp matches 8 run function game:display/hints/map_credit
execute if score rand temp matches 9 run title @a[tag=game.in_game] subtitle {"text":"Crounhunt was developed by ThatCuteOne, ru_bl, and Lyne100","color":"white"}
execute if score rand temp matches 10 run title @a[tag=game.in_game] subtitle {"text":"The creepermaster has 7 creeper spawn eggs","color":"white"}
execute if score rand temp matches 11 run title @a[tag=game.in_game] subtitle {"text":"The speedster kit does not enfringe any copyright or trademark","color":"white"}
execute if score rand temp matches 12 run title @a[tag=game.in_game] subtitle {"text":"The crossbowman is very pround of their french heritage","color":"white"}
execute if score rand temp matches 13 run title @a[tag=game.in_game] subtitle {"text":"The contents of the FFA map have a secret meaning","color":"white"}
execute if score rand temp matches 14 run title @a[tag=game.in_game] subtitle [{"text":"If you're struggeling to kill enemies, press ","color":"white"},{"keybind":"key.attack"},{"text":" with your weapon"}]
execute if score rand temp matches 15 run title @a[tag=game.in_game] subtitle [{"color":"white","text":"The "},{"strikethrough":true,"text":"creepmaster"},{"text":" creepermaster has 7 "},{"strikethrough":true,"text":"creeps"},{"text":" creeper spawn eggs"}]
execute if score rand temp matches 16 run title @a[tag=game.in_game] subtitle {"text":"1.20.5 broke the entire game","color":"white"}
execute if score rand temp matches 17 run title @a[tag=game.in_game] subtitle {"text":"There are a lot of hidden advancements","color":"white"}


# disable shield with crit
# disable shield with projectile
# creepers launch eachother
# armor invisibility
# loose invis when attacking or beeing attacked
# random kit
# unlocked advancement amount
# map credit
# game credit
# The creepermaster has 7 creeper spawn eggs
# jokes:
# the speedster kit does not enfringe any copyright or trademark
# the crossbowman is very proud of their french heritage
# the contents of the FFA map have a secret meaning
# if you're struggeling to kill enemies, press LMB with your weapon
# The creepmaster -oh um i mean creepermaster has 7 creeps- FUCK