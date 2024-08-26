execute as @s at @s run function warpportal:portal/management/open/spawn_portal_marker

execute as @e[tag=wp_portal,tag=wp_opening,distance=..1] at @s run function warpportal:portal/management/open/init_portal

# 

kill @s