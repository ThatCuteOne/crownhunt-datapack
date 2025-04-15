clear @s
# range
execute if score @s kit.id matches 0 run function iss:functions/load/ {id:0}
execute if score @s kit.id matches 1 run function iss:functions/load/ {id:1}
#movement
execute if score @s kit.id matches 2 run function iss:functions/load/ {id:2}
execute if score @s kit.id matches 3 run function iss:functions/load/ {id:3}
#Tank
execute if score @s kit.id matches 4 run function iss:functions/load/ {id:4}
execute if score @s kit.id matches 5 run function iss:functions/load/ {id:5}
execute if score @s kit.id matches 6 run function iss:functions/load/ {id:6}
execute if score @s kit.id matches 7 run function iss:functions/load/ {id:7}
execute if score @s kit.id matches 8 run function iss:functions/load/ {id:8}
# damage dealer
execute if score @s kit.id matches 9 run function iss:functions/load/ {id:9}
execute if score @s kit.id matches 10 run function iss:functions/load/ {id:10}
execute if score @s kit.id matches 11 run function iss:functions/load/ {id:11}
execute if score @s kit.id matches 12 run function iss:functions/load/ {id:12}
# support
execute if score @s kit.id matches 13 run function iss:functions/load/ {id:13}
execute if score @s kit.id matches 14 run function iss:functions/load/ {id:14}
execute if score @s kit.id matches 15 run function iss:functions/load/ {id:15}