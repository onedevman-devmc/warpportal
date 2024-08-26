tag @e[tag=wp_entity_going_through_portal] remove wp_entity_going_through_portal
execute as @s at @s run function warpportal:portal/management/mark_entity_going_through_portal
execute as @e[tag=wp_entity_going_through_portal,tag=!wp_entity_has_been_tp] at @s if data entity @s RootVehicle run tag @s add wp_entity_has_been_tp
execute as @e[tag=wp_entity_going_through_portal,tag=!wp_entity_has_been_tp] at @s unless data entity @s RootVehicle run tag @s add wp_entity_to_tp
tag @e[tag=wp_entity_to_tp] remove wp_entity_going_through_portal
execute as @e[tag=wp_entity_to_tp] at @s run execute as @e[tag=wp_portal,tag=!wp_entity_going_through_portal_event_processing,sort=nearest,limit=1] at @s if entity @e[tag=wp_entity_to_tp,distance=..23,sort=nearest] run function warpportal:portal/events/listeners/on_entity_going_through_portal