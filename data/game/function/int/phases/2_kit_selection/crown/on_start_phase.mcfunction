# bossbar
bossbar set star_timer_blue players @a[team=spectator]
bossbar set star_timer_red players @a[team=spectator]
bossbar set star_timer_blue players @a[tag=game.in_game]
bossbar set star_timer_red players @a[tag=game.in_game]
bossbar set star_timer_blue visible false
bossbar set star_timer_red visible false
bossbar set star_timer_red color red
bossbar set star_timer_blue color blue
bossbar set star_timer_red style notched_10
bossbar set star_timer_blue style notched_10

# timer
scoreboard players operation star_timer_blue gamemode.timer = star_timer_blue gamemode.settings
scoreboard players operation star_timer_red gamemode.timer = star_timer_red gamemode.settings