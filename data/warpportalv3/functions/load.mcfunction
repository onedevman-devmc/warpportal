data merge storage warpportalv3:portal_registry {pairing_map:{}, pairing_state_map:{}}

# 

scoreboard objectives add wpv3_on_pairing_changes dummy
scoreboard objectives add wpv3_point_was_paired dummy
scoreboard objectives add wpv3_on_portal_breaks dummy

scoreboard objectives add wpv3_is_axis_x_structure dummy
scoreboard objectives add wpv3_is_axis_z_structure dummy
scoreboard objectives add wpv3_check_portal_structure dummy

scoreboard objectives add wpv3_portal_x_fix dummy
scoreboard objectives add wpv3_portal_y_fix dummy
scoreboard objectives add wpv3_portal_z_fix dummy

scoreboard objectives add wpv3_line_builders_dy dummy

scoreboard objectives add wpv3_force_loaded dummy
scoreboard objectives add wpv3_target_force_loaded dummy
scoreboard objectives add wpv3_force_loading_timeout dummy

scoreboard objectives add wpv3_pitch dummy
scoreboard objectives add wpv3_yaw dummy

scoreboard objectives add wpv3_constants dummy

scoreboard players set __0 wpv3_constants 0
scoreboard players set __10 wpv3_constants 10
scoreboard players set __90 wpv3_constants 90
scoreboard players set __-90 wpv3_constants -90
scoreboard players set __180 wpv3_constants 180
scoreboard players set __-180 wpv3_constants -180

#

schedule function warpportalv3:advancements/root 1t

schedule function warpportalv3:portal/management/manage 1t
schedule function warpportalv3:portal/structure/line_builders/management/manage 1t
schedule function warpportalv3:portal/sounds/management/load 1t