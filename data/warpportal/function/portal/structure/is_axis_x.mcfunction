scoreboard players set @s wp_is_axis_x_structure 0
execute if block ~ ~-1 ~ lodestone if block ~-1 ~-1 ~ observer[facing=west] if block ~1 ~-1 ~ observer[facing=east] run scoreboard players set @s wp_is_axis_x_structure 1
