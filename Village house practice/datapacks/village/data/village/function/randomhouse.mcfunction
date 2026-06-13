function village:removehouse

execute if score type variables matches 0 store result storage minecraft:data i int 1.0 run random value 0..122
execute if score type variables matches 1 store result storage minecraft:data i int 1.0 run random value 23..50
execute if score type variables matches 2 store result storage minecraft:data i int 1.0 run random value 0..22
execute if score type variables matches 3 store result storage minecraft:data i int 1.0 run random value 51..75
execute if score type variables matches 4 store result storage minecraft:data i int 1.0 run random value 102..122
execute if score type variables matches 5 store result storage minecraft:data i int 1.0 run random value 76..101
execute store result storage minecraft:data correct int 1.0 run random value 4..7
function village:randomhouse2 with storage minecraft:data