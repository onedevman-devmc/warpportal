execute as @s at @s run function warpportalv3:portal/management/open/spawn_portal_marker

execute as @e[tag=wpv3_portal,tag=wpv3_opening,distance=..1] at @s run function warpportalv3:portal/management/open/init_portal

# 

kill @s