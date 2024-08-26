execute as @s at @s run function warpportal:portal/structure/check

execute if score @s wp_check_portal_structure matches 0..0 run function warpportal:portal/management/delete_destroyed/delete
execute unless block ~ ~ ~ nether_portal run function warpportal:portal/management/delete_destroyed/delete