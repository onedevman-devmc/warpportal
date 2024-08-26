scoreboard players set all_portal_destroyed wp_portal_num 0
scoreboard players operation destroy_all_loop_index wp_portal_num = __min_int_value wp_constants
schedule function warpportal:portal/destroy_all/loop 1t