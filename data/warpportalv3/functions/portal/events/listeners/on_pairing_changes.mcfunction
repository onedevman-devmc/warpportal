tag @s add wpv3_pairing_changes_event_processing

# 

execute as @s at @s run function warpportalv3:portal/management/pairing/unpair
execute as @s at @s run function warpportalv3:portal/management/pairing/pair

# 

tag @s remove wpv3_pairing_changes_event_processing