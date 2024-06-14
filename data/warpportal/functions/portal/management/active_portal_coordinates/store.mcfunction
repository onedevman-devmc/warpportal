$data modify storage warpportal:registry active_portal_coordinates_map.'__$(num)__' set value {dimension:"$(dimension)", position:$(position)}
$data modify storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.x set from storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.position[0]
$data modify storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.y set from storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.position[1]
$data modify storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.z set from storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.position[2]
$data remove storage warpportal:registry active_portal_coordinates_map.'__$(num)__'.position