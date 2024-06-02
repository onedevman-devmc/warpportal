function warpportalv3:portal/management/timeout_force_loaded_targets

function warpportalv3:portal/management/fix_entity_nether_portal_traveling

function warpportalv3:portal/management/teleportation/reset_teleported_entities

function warpportalv3:portal/events

function warpportalv3:portal/management/delete_destroyed

# 

execute as @e[tag=wpv3_portal] at @s run execute as @e[distance=..42] at @s run function warpportalv3:portal/sounds/mute_nether_portal

# 

schedule function warpportalv3:portal/management/manage 1t