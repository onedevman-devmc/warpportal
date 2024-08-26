execute as @e[tag=wp_portal,scores={wp_force_loading_timeout=1..200}] at @s run scoreboard players remove @s wp_force_loading_timeout 1
execute as @e[tag=wp_portal,scores={wp_force_loading_timeout=0..0}] at @s if score @s wp_force_loaded matches 0..0 run forceload remove ~ ~
scoreboard players reset @e[tag=wp_portal,scores={wp_force_loading_timeout=0..0}] wp_force_loaded
scoreboard players reset @e[tag=wp_portal,scores={wp_force_loading_timeout=0..0}] wp_force_loading_timeout