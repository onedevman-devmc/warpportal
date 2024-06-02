tag @e[tag=wpv3_entity_going_through_portal] remove wpv3_entity_going_through_portal
execute as @s at @s run function warpportalv3:portal/management/mark_entity_going_through_portal
execute as @e[tag=wpv3_entity_going_through_portal,tag=!wpv3_entity_has_been_tp] at @s if data entity @s RootVehicle run tag @s add wpv3_entity_has_been_tp
execute as @e[tag=wpv3_entity_going_through_portal,tag=!wpv3_entity_has_been_tp] at @s unless data entity @s RootVehicle run tag @s add wpv3_entity_to_tp
tag @e[tag=wpv3_entity_to_tp] remove wpv3_entity_going_through_portal
execute as @e[tag=wpv3_entity_to_tp] at @s run execute as @e[tag=wpv3_portal,tag=!wpv3_entity_going_through_portal_event_processing,sort=nearest,limit=1] at @s if entity @e[tag=wpv3_entity_to_tp,distance=..23,sort=nearest] run function warpportalv3:portal/events/listeners/on_entity_going_through_portal