#declare storage data.settings
#declare storage data.leaderboard
#declare storage temp

scoreboard objectives add sidebar playerKillCount {"text": "Gamemode"}
scoreboard objectives add lobby.credits dummy

scoreboard objectives add gamemode.advancements.time_since_last_kill dummy
scoreboard objectives add gamemode.advancements.round_kills dummy
scoreboard objectives add gamemode.advancements.game_deaths dummy
scoreboard objectives add gamemode.advancements.crown_walking custom:walk_one_cm
scoreboard objectives add gamemode.advancements.archer_arrows_shot used:bow
scoreboard objectives add gamemode.completed_advancements dummy

scoreboard objectives add gamemode.move_detect.walk custom:walk_one_cm
scoreboard objectives add gamemode.move_detect.sprint custom:sprint_one_cm
scoreboard objectives add gamemode.move_detect.jump custom:jump

scoreboard objectives add gamemode.stats.game_kills playerKillCount
scoreboard objectives add gamemode.stats.game_deaths deathCount
scoreboard objectives add gamemode.stats.crown_seconds dummy

scoreboard objectives add gamemode.stats.version dummy

scoreboard objectives add gamemode.settings dummy
scoreboard objectives add gamemode.timer dummy
scoreboard players set start_timer_length gamemode.general 20
scoreboard objectives add leaderboard.id dummy
scoreboard objectives add player_id dummy

scoreboard objectives add gamemode.round_id dummy

tellraw @a {"text":"[reloaded]"}

scoreboard objectives add gamemode.general dummy
scoreboard objectives add temp dummy
scoreboard players set max_kit_select gamemode.general 5
scoreboard players set max_kit_amount gamemode.general 7
scoreboard objectives add carrot_on_a_stick.trigger used:carrot_on_a_stick

execute store result storage data.settings max_kit_select int 1 run scoreboard players get max_kit_amount gamemode.general

#declare storage game:map_switcher

gamerule fallDamage false

scoreboard objectives add game.player.left_game custom:leave_game

#team modify lobby

team add lobby
team modify lobby friendlyFire false
team modify lobby collisionRule never

team add spectator
team modify spectator color gray
scoreboard objectives setdisplay sidebar.team.gray sidebar

scoreboard objectives add gamemode.experience dummy {"text":"Level:","color":"gold","bold":true}
scoreboard objectives add gamemode.experience_levels dummy {"text":"Level:","color":"gold","bold":true}

scoreboard objectives setdisplay below_name gamemode.experience_levels

scoreboard objectives add lobby.ffa_kill dummy
scoreboard objectives add lobby.ffa_all_time dummy
scoreboard objectives add gamemode.health health

scoreboard objectives add lobby.item_used.bow used:bow
scoreboard objectives add lobby.item_used.crossbow used:crossbow
scoreboard objectives add lobby.item_used.splash_potion used:splash_potion
scoreboard objectives add lobby.item_used.potion used:potion
scoreboard objectives add lobby.item_used.creeper_spawn_egg used:creeper_spawn_egg
scoreboard objectives add lobby.item_used.golden_apple used:golden_apple
scoreboard objectives add lobby.item_used.lingering_potion used:lingering_potion
scoreboard objectives add lobby.item_used.trident used:trident


#Blue team
team add Blue {"text":"Blue team","color":"blue"}
team modify Blue color blue
team modify Blue friendlyFire false
team modify Blue collisionRule pushOtherTeams

# Red team
team add Red {"text":"Red team","color":"red"}
team modify Red color red
team modify Red friendlyFire false
team modify Red collisionRule pushOtherTeams

# Spectator team
team add Spec {"text":"Spectator","color":"yellow"}
team modify Spec color gray


scoreboard objectives add gamemode.game_id dummy

scoreboard objectives add game.carved_pumpkin.picked_up picked_up:carved_pumpkin

scoreboard objectives add gamemode.death.save deathCount
scoreboard objectives add gamemode.death deathCount
scoreboard objectives add gamemode.kills custom:player_kills
gamerule doImmediateRespawn true
gamerule keepInventory true

scoreboard objectives add gamemode.map_id dummy

scoreboard objectives add gamemode.picked_up_star dummy
scoreboard objectives add leaderboard.distance_walked_with_crown dummy
scoreboard objectives add lobby.kit_viewer dummy


# kit loading
scoreboard objectives add kit.id dummy