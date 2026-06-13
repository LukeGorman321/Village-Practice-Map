execute store result storage data workstation int 1.0 run random value 0..15
function village:changeworkstation with storage minecraft:data

execute if blocks ~ ~ ~ ~ ~ ~ 7 -62 -5 all run return run function village:randomworkstation
execute if blocks ~ ~ ~ ~ ~ ~ ~1 ~ ~ all run return run function village:randomworkstation
execute if blocks ~ ~ ~ ~ ~ ~ ~2 ~ ~ all run return run function village:randomworkstation
execute if blocks ~ ~ ~ ~ ~ ~ ~3 ~ ~ all run return run function village:randomworkstation