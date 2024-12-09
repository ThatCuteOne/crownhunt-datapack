scoreboard objectives add navigator dummy
scoreboard objectives add navigator.page dummy

scoreboard objectives add navigator.carrot used:carrot_on_a_stick
scoreboard objectives add navigator.drop custom:drop
#declare storage navigator:temp

tellraw @a {"text": "Navigator Reloaded!","color": "gold"}