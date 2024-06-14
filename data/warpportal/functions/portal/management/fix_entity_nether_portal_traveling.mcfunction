execute as @e[tag=wp_portal,tag=wp_axis_x] at @s run execute as @e[type=!player,distance=..23,dx=-23,dy=23,dz=-2] at @s run data merge entity @s {PortalCooldown:999999}
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s run execute as @e[type=!player,distance=..23,dx=-23,dy=23,dz=2] at @s run data merge entity @s {PortalCooldown:999999}
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s run execute as @e[type=!player,distance=..23,dx=23,dy=23,dz=-2] at @s run data merge entity @s {PortalCooldown:999999}
execute as @e[tag=wp_portal,tag=wp_axis_x] at @s run execute as @e[type=!player,distance=..23,dx=23,dy=23,dz=2] at @s run data merge entity @s {PortalCooldown:999999}

execute as @e[tag=wp_portal,tag=wp_axis_z] at @s run execute as @e[type=!player,distance=..23,dx=-2,dy=23,dz=-23] at @s run data merge entity @s {PortalCooldown:999999}
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s run execute as @e[type=!player,distance=..23,dx=2,dy=23,dz=-23] at @s run data merge entity @s {PortalCooldown:999999}
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s run execute as @e[type=!player,distance=..23,dx=-2,dy=23,dz=23] at @s run data merge entity @s {PortalCooldown:999999}
execute as @e[tag=wp_portal,tag=wp_axis_z] at @s run execute as @e[type=!player,distance=..23,dx=2,dy=23,dz=23] at @s run data merge entity @s {PortalCooldown:999999}
