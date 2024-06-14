execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run say test 1
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~ ~-1.5 nether_portal[axis=x] run say test 2
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run say test 3
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~ ~1.5 nether_portal[axis=x] run say test 4

execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~1 ~-1.5 nether_portal[axis=x] run say test 5
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~1 ~-1.5 nether_portal[axis=x] run say test 6
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=-23,dy=24,dz=0] at @s if block ~ ~1 ~1.5 nether_portal[axis=x] run say test 7
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s positioned ~ ~-1 ~-1.5 run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=23,dy=24,dz=0] at @s if block ~ ~1 ~1.5 nether_portal[axis=x] run say test 8

# 

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run say test 9
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~-1.5 ~ ~ nether_portal[axis=z] run say test 10
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run say test 11
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~1.5 ~ ~ nether_portal[axis=z] run say test 12

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~-1.5 ~1 ~ nether_portal[axis=z] run say test 13
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~-1.5 ~1 ~ nether_portal[axis=z] run say test 14
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=-23] at @s if block ~1.5 ~1 ~ nether_portal[axis=z] run say test 15
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s positioned ~-1.5 ~-1 ~ run execute as @e[tag=wp_entity_has_been_tp,distance=..23,dx=0,dy=24,dz=23] at @s if block ~1.5 ~1 ~ nether_portal[axis=z] run say test 16