scoreboard players reset * sidebar

scoreboard players set score_spacer sidebar -1
scoreboard players display name score_spacer sidebar ""
scoreboard players display numberformat score_spacer sidebar blank

scoreboard players set score_header sidebar -2
scoreboard players display name score_header sidebar {"text": "-- Scores --", "color":"gold","font":"game:small_caps"}
scoreboard players display numberformat score_header sidebar blank

scoreboard players set kill_header sidebar 1000
scoreboard players display name kill_header sidebar {"text": "-- Top Kills --", "color":"gold","font":"game:small_caps"}
scoreboard players display numberformat kill_header sidebar blank

scoreboard players set score_blue sidebar -3
scoreboard players display name score_blue sidebar [{"text": "Blue: ", "color": "blue","font":"game:small_caps"},{"text":"👑 👑 👑 👑 👑","font":"default"}]
scoreboard players display numberformat score_blue sidebar blank

scoreboard players set score_red sidebar -4
scoreboard players display name score_red sidebar [{"text": "Red: ", "color": "red","font":"game:small_caps"},{"text":"👑 👑 👑 👑 👑","font":"default"}]
scoreboard players display numberformat score_red sidebar blank