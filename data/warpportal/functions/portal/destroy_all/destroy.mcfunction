scoreboard players set destroy_all_check wp_force_loaded 0
$execute in $(dimension) positioned $(x) $(y) $(z) unless loaded ~ ~ ~ run scoreboard players set destroy_all_check wp_force_loaded 1
$execute in $(dimension) positioned $(x) $(y) $(z) unless loaded ~ ~ ~ run forceload add ~ ~
$execute in $(dimension) positioned $(x) $(y) $(z) run setblock ~ ~ ~ air
$execute if score destroy_all_check wp_force_loaded matches 0..0 in $(dimension) positioned $(x) $(y) $(z) run forceload remove ~ ~