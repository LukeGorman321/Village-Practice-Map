$function village:newhouse with storage minecraft:data houses[$(i)]

execute if score mode variables matches 0 positioned 7 -60 -5 run function village:randomworkstation
execute if score mode variables matches 0 positioned 6 -60 -5 run function village:randomworkstation
execute if score mode variables matches 0 positioned 5 -60 -5 run function village:randomworkstation
execute if score mode variables matches 0 positioned 4 -60 -5 run function village:randomworkstation

$execute if score mode variables matches 0 run clone 7 -62 -5 7 -62 -5 $(correct) -60 -5

$execute if score mode variables matches 1 store result score correct variables run data get storage minecraft:data houses[$(i)].chest
$execute if score mode variables matches 2 store result score correct variables run data get storage minecraft:data houses[$(i)].craftingtable
$execute if score mode variables matches 3 store result score correct variables run data get storage minecraft:data houses[$(i)].bed
$execute if score mode variables matches 4 store result score correct variables run data get storage minecraft:data houses[$(i)].pot
$execute if score mode variables matches 5 store result score correct variables run data get storage minecraft:data houses[$(i)].furnace

$scoreboard players set biome variables $(i)
execute if score biome variables matches 0..22 run fill -6 -61 -3 21 -61 21 sand
execute if score biome variables matches 0..22 run fill -1 -61 -4 -7 -55 -4 cut_sandstone
execute if score biome variables matches 0..22 run fill -7 -61 -4 -7 -55 22 cut_sandstone
execute if score biome variables matches 0..22 run fill -7 -61 22 22 -55 22 cut_sandstone
execute if score biome variables matches 0..22 run fill 22 -61 22 22 -55 -4 cut_sandstone
execute if score biome variables matches 0..22 run fill 22 -61 -4 12 -55 -4 cut_sandstone

execute if score biome variables matches 23..50 run fill -6 -61 -3 21 -61 21 grass_block
execute if score biome variables matches 23..50 run fill -1 -61 -4 -7 -55 -4 stripped_oak_log
execute if score biome variables matches 23..50 run fill -7 -61 -4 -7 -55 22 stripped_oak_log
execute if score biome variables matches 23..50 run fill -7 -61 22 22 -55 22 stripped_oak_log
execute if score biome variables matches 23..50 run fill 22 -61 22 22 -55 -4 stripped_oak_log
execute if score biome variables matches 23..50 run fill 22 -61 -4 12 -55 -4 stripped_oak_log

execute if score biome variables matches 51..75 run fill -6 -61 -3 21 -61 21 grass_block
execute if score biome variables matches 51..75 run fill -1 -61 -4 -7 -55 -4 stripped_acacia_log
execute if score biome variables matches 51..75 run fill -7 -61 -4 -7 -55 22 stripped_acacia_log
execute if score biome variables matches 51..75 run fill -7 -61 22 22 -55 22 stripped_acacia_log
execute if score biome variables matches 51..75 run fill 22 -61 22 22 -55 -4 stripped_acacia_log
execute if score biome variables matches 51..75 run fill 22 -61 -4 12 -55 -4 stripped_acacia_log

execute if score biome variables matches 76..101 run fill -6 -61 -3 21 -61 21 snow_block
execute if score biome variables matches 76..101 run fill -1 -61 -4 -7 -55 -4 snow_block
execute if score biome variables matches 76..101 run fill -7 -61 -4 -7 -55 22 snow_block
execute if score biome variables matches 76..101 run fill -7 -61 22 22 -55 22 snow_block
execute if score biome variables matches 76..101 run fill 22 -61 22 22 -55 -4 snow_block
execute if score biome variables matches 76..101 run fill 22 -61 -4 12 -55 -4 snow_block

execute if score biome variables matches 102..122 run fill -6 -61 -3 21 -61 21 podzol
execute if score biome variables matches 102..122 run fill -1 -61 -4 -7 -55 -4 spruce_log
execute if score biome variables matches 102..122 run fill -7 -61 -4 -7 -55 22 spruce_log
execute if score biome variables matches 102..122 run fill -7 -61 22 22 -55 22 spruce_log
execute if score biome variables matches 102..122 run fill 22 -61 22 22 -55 -4 spruce_log
execute if score biome variables matches 102..122 run fill 22 -61 -4 12 -55 -4 spruce_log