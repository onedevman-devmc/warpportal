data merge storage warpportal:registry {pairing_map:{}, pairing_state_map:{}, active_portal_coordinates_map:{}, destroy_all_loop_index: 0}

# 

scoreboard objectives add wp_on_pairing_changes dummy
scoreboard objectives add wp_point_was_paired dummy
scoreboard objectives add wp_on_portal_breaks dummy

scoreboard objectives add wp_is_axis_x_structure dummy
scoreboard objectives add wp_is_axis_z_structure dummy
scoreboard objectives add wp_check_portal_structure dummy

scoreboard objectives add wp_portal_x dummy
scoreboard objectives add wp_portal_y dummy
scoreboard objectives add wp_portal_z dummy

scoreboard objectives add wp_line_builders_dy dummy

scoreboard objectives add wp_force_loaded dummy
scoreboard objectives add wp_target_force_loaded dummy
scoreboard objectives add wp_force_loading_timeout dummy

scoreboard objectives add wp_pitch dummy
scoreboard objectives add wp_yaw dummy

scoreboard objectives add wp_portal_num dummy

scoreboard objectives add wp_constants dummy

# 

scoreboard players set __0 wp_constants 0
scoreboard players set __10 wp_constants 10
scoreboard players set __90 wp_constants 90
scoreboard players set __-90 wp_constants -90
scoreboard players set __180 wp_constants 180
scoreboard players set __-180 wp_constants -180
scoreboard players set __min_int_value wp_constants -2147483648
scoreboard players set __max_int_value wp_constants 2147483647

execute unless score __counter wp_portal_num matches -2147483648..2147483647 run scoreboard players operation __counter wp_portal_num = __min_int_value wp_constants

#

schedule function warpportal:advancements/root 1t

schedule function warpportal:portal/management/manage 1t
schedule function warpportal:portal/structure/line_builders/management/manage 1t
schedule function warpportal:portal/sounds/management/load 1t