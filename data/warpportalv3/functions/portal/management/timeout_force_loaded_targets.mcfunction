execute as @e[tag=wpv3_portal,scores={wpv3_force_loading_timeout=1..200}] at @s run scoreboard players remove @s wpv3_force_loading_timeout 1
execute as @e[tag=wpv3_portal,scores={wpv3_force_loading_timeout=0..0}] at @s if score @s wpv3_force_loaded matches 0..0 run forceload remove ~ ~
scoreboard players reset @e[tag=wpv3_portal,scores={wpv3_force_loading_timeout=0..0}] wpv3_force_loaded
scoreboard players reset @e[tag=wpv3_portal,scores={wpv3_force_loading_timeout=0..0}] wpv3_force_loading_timeout