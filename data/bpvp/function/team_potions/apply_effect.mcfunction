$execute if entity @s[team=Red] run effect give @a[team=Red] $(effect) $(duration) $(amplifier) $(hide_particles)
$execute if entity @s[team=Blue] run effect give @a[team=Blue] $(effect) $(duration) $(amplifier) $(hide_particles)
$execute if entity @s[team=!Blue,team=!Red] run effect give @s $(effect) $(duration) $(amplifier) $(hide_particles)
