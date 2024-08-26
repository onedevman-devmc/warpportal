execute as @s at @s run function warpportal:portal/management/teleportation/teleport/search_target with entity @s ArmorItems[0].components."minecraft:custom_data"

execute if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport.tpargs set value {}
execute if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target run data modify entity @s ArmorItems[0].components."minecraft:custom_data".teleport.tpargs.dimension set from entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target.dimension
execute if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target store result entity @s ArmorItems[0].components."minecraft:custom_data".teleport.tpargs.x int 1 run data get entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target.position[0]
execute if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target store result entity @s ArmorItems[0].components."minecraft:custom_data".teleport.tpargs.y int 1 run data get entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target.position[1]
execute if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target store result entity @s ArmorItems[0].components."minecraft:custom_data".teleport.tpargs.z int 1 run data get entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target.position[2]

tag @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] add wp_entity_has_been_tp

execute as @s at @s if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target run execute as @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] at @s run execute as @e[distance=..16] run function warpportal:portal/sounds/play_teleportation_origin
execute as @s at @s if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target run function warpportal:portal/management/teleportation/teleport/tp with entity @s ArmorItems[0].components."minecraft:custom_data".teleport.tpargs
execute as @s at @s if data entity @s ArmorItems[0].components."minecraft:custom_data".teleport.target run execute as @e[tag=wp_entity_has_been_tp] at @s run execute as @e[distance=..16] run function warpportal:portal/sounds/play_teleportation_destination

tag @e[tag=wp_entity_has_been_tp] remove wp_entity_to_tp
