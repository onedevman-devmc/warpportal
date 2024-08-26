execute unless score all_portal_destroyed wp_portal_num matches 1..1 run schedule function warpportal:uninstall/after_portal_destruction 1t
execute unless score all_portal_destroyed wp_portal_num matches 1..1 run return 0

# 

schedule clear warpportal:advancements/root

schedule clear warpportal:portal/management/manage
schedule clear warpportal:portal/structure/line_builders/management/manage
schedule clear warpportal:portal/sounds/management/load

# 

data remove storage warpportal:registry pairing_map
data remove storage warpportal:registry pairing_state_map
data remove storage warpportal:registry active_portal_coordinates_map
data remove storage warpportal:registry destroy_all_loop_index

# 

scoreboard objectives remove wp_on_pairing_changes
scoreboard objectives remove wp_point_was_paired
scoreboard objectives remove wp_on_portal_breaks

scoreboard objectives remove wp_is_axis_x_structure
scoreboard objectives remove wp_is_axis_z_structure
scoreboard objectives remove wp_check_portal_structure

scoreboard objectives remove wp_portal_x
scoreboard objectives remove wp_portal_y
scoreboard objectives remove wp_portal_z

scoreboard objectives remove wp_line_builders_dy

scoreboard objectives remove wp_force_loaded
scoreboard objectives remove wp_target_force_loaded
scoreboard objectives remove wp_force_loading_timeout

scoreboard objectives remove wp_pitch
scoreboard objectives remove wp_yaw

scoreboard objectives remove wp_portal_num

scoreboard objectives remove wp_constants