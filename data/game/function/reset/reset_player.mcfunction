advancement revoke @s everything
scoreboard players reset @s gamemode.experience
scoreboard players set @s gamemode.completed_advancements 0
function game:display/experience/update


scoreboard players operation @s gamemode.stats.version = current_version gamemode.stats.version