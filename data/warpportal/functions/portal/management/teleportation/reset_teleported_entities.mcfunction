execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=23,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=23,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=23,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=23,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp

execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=-1,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=-1,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=-1,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~ ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=-1,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp

# 

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=23,dz=-23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=23,dz=23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=23,dz=-23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=23,dz=23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=-1,dz=-23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=-1,dz=23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=-1,dz=-23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~ ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=-1,dz=23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp