tag @s add wp_pairing_changes_event_processing

# 

execute as @s at @s run function warpportal:portal/management/pairing/unpair
execute as @s at @s run function warpportal:portal/management/pairing/pair

# 

tag @s remove wp_pairing_changes_event_processing