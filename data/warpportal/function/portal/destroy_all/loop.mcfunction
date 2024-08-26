execute store result storage warpportal:registry destroy_all_loop_index int 1 run scoreboard players get destroy_all_loop_index wp_portal_num
execute run function warpportal:portal/destroy_all/iteration with storage warpportal:registry

# # 

scoreboard players add destroy_all_loop_index wp_portal_num 1
execute if score destroy_all_loop_index wp_portal_num <= __counter wp_portal_num run schedule function warpportal:portal/destroy_all/loop 1t
execute unless score destroy_all_loop_index wp_portal_num <= __counter wp_portal_num run scoreboard players set all_portal_destroyed wp_portal_num 1