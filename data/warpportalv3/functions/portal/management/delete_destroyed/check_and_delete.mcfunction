execute as @s at @s run function warpportalv3:portal/structure/check

execute if score @s wpv3_check_portal_structure matches 0..0 run function warpportalv3:portal/management/delete_destroyed/delete
execute unless block ~ ~ ~ nether_portal run function warpportalv3:portal/management/delete_destroyed/delete