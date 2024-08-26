$execute if entity @s[tag=wp_axis_x] run summon minecraft:firework_rocket ~ ~$(dy) ~ {ShotAtAngle:1b,LifeTime:15,Silent:1b,Tags:[wp_entity,wp_portal_line_builder,wp_axis_x],Motion:[1d,0d,0d]}
$execute if entity @s[tag=wp_axis_x] run summon minecraft:firework_rocket ~ ~$(dy) ~ {ShotAtAngle:1b,LifeTime:15,Silent:1b,Tags:[wp_entity,wp_portal_line_builder,wp_axis_x],Motion:[-1d,0d,0d]}

$execute if entity @s[tag=wp_axis_z] run summon minecraft:firework_rocket ~ ~$(dy) ~ {ShotAtAngle:1b,LifeTime:15,Silent:1b,Tags:[wp_entity,wp_portal_line_builder,wp_axis_z],Motion:[0d,0d,1d]}
$execute if entity @s[tag=wp_axis_z] run summon minecraft:firework_rocket ~ ~$(dy) ~ {ShotAtAngle:1b,LifeTime:15,Silent:1b,Tags:[wp_entity,wp_portal_line_builder,wp_axis_z],Motion:[0d,0d,-1d]}