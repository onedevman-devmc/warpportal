execute as @e[tag=wp_portal] at @s run function warpportal:portal/events/pairing_changes_event
execute as @e[tag=wp_portal] at @s run function warpportal:portal/events/entity_going_through_portal_event

execute as @e[type=arrow,nbt={inGround:1b}] at @s unless entity @s[nbt={Fire:-1s}] run function warpportal:portal/events/open_portal_event