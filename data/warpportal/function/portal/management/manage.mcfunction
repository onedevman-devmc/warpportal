function warpportal:portal/management/timeout_force_loaded_targets

function warpportal:portal/management/fix_entity_nether_portal_traveling

function warpportal:portal/management/teleportation/reset_teleported_entities

function warpportal:portal/events

function warpportal:portal/management/delete_destroyed

# 

execute as @e[tag=wp_portal] at @s run execute as @e[distance=..42] at @s run function warpportal:portal/sounds/mute_nether_portal

# 

schedule function warpportal:portal/management/manage 1t