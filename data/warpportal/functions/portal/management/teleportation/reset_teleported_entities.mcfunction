execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp

execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~1 ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~1 ~-1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~1 ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~1 ~1.5 nether_portal[axis=x] run tag @s remove wp_entity_has_been_tp

# 

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~-1.5 ~1 ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~-1.5 ~1 ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~1.5 ~1 ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~1.5 ~1 ~ nether_portal[axis=z] run tag @s remove wp_entity_has_been_tp