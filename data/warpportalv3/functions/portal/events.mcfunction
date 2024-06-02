execute as @e[tag=wpv3_portal] at @s run function warpportalv3:portal/events/pairing_changes_event
execute as @e[tag=wpv3_portal] at @s run function warpportalv3:portal/events/entity_going_through_portal_event

execute as @e[type=arrow,nbt={inGround:1b}] at @s unless entity @s[nbt={Fire:-1s}] run function warpportalv3:portal/events/open_portal_event