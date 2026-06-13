execute if score mode variables matches 0 as @e[type=interaction] at @s on attacker if blocks ~ ~ ~ ~ ~ ~ 7 -62 -5 all run title @s actionbar {"text":"Correct", "color":"green"}
execute if score mode variables matches 0 as @e[type=interaction] at @s on attacker if blocks ~ ~ ~ ~ ~ ~ 7 -62 -5 all at @s run playsound minecraft:entity.experience_orb.pickup
execute if score mode variables matches 0 as @e[type=interaction] at @s on attacker unless blocks ~ ~ ~ ~ ~ ~ 7 -62 -5 all run title @s actionbar {"text":"Incorrect", "color":"red"}
execute if score mode variables matches 0 as @e[type=interaction] at @s on attacker unless blocks ~ ~ ~ ~ ~ ~ 7 -62 -5 all at @s run playsound minecraft:entity.pillager.ambient
execute if score mode variables matches 0 as @e[type=interaction] at @s on attacker if blocks ~ ~ ~ ~ ~ ~ 7 -62 -5 all at @s run function village:randomhouse

execute unless score mode variables matches 0 if score correct variables matches 0 as @e[type=interaction, tag=not] at @s on attacker run title @s actionbar {"text":"Correct", "color":"green"}
execute unless score mode variables matches 0 if score correct variables matches 0 as @e[type=interaction, tag=not] at @s on attacker at @s run playsound minecraft:entity.experience_orb.pickup
execute unless score mode variables matches 0 if score correct variables matches 0 as @e[type=interaction, tag=is] at @s on attacker run title @s actionbar {"text":"Incorrect", "color":"red"}
execute unless score mode variables matches 0 if score correct variables matches 0 as @e[type=interaction, tag=is] at @s on attacker at @s run playsound minecraft:entity.pillager.ambient

execute unless score mode variables matches 0 if score correct variables matches 1 as @e[type=interaction, tag=is] at @s on attacker run title @s actionbar {"text":"Correct", "color":"green"}
execute unless score mode variables matches 0 if score correct variables matches 1 as @e[type=interaction, tag=is] at @s on attacker at @s run playsound minecraft:entity.experience_orb.pickup
execute unless score mode variables matches 0 if score correct variables matches 1 as @e[type=interaction, tag=not] at @s on attacker run title @s actionbar {"text":"Incorrect", "color":"red"}
execute unless score mode variables matches 0 if score correct variables matches 1 as @e[type=interaction, tag=not] at @s on attacker at @s run playsound minecraft:entity.pillager.ambient

execute unless score mode variables matches 0 if score correct variables matches 0 as @e[type=interaction, tag=not] at @s on attacker at @s run function village:randomhouse
execute unless score mode variables matches 0 if score correct variables matches 1 as @e[type=interaction, tag=is] at @s on attacker at @s run function village:randomhouse

execute as @e[type=interaction, tag=blast_furnace] at @s on attacker run function village:loot_table {i:0, size:4}
execute as @e[type=interaction, tag=smoker] at @s on attacker run function village:loot_table {i:1, size:6}
execute as @e[type=interaction, tag=cartography_table] at @s on attacker run function village:loot_table {i:2, size:6}
execute as @e[type=interaction, tag=barrel] at @s on attacker run function village:loot_table {i:3, size:7}
execute as @e[type=interaction, tag=fletching_table] at @s on attacker run function village:loot_table {i:4, size:6}
execute as @e[type=interaction, tag=stonecutter] at @s on attacker run function village:loot_table {i:5, size:8}
execute as @e[type=interaction, tag=loom] at @s on attacker run function village:loot_table {i:6, size:8}
execute as @e[type=interaction, tag=cauldron] at @s on attacker run function village:loot_table {i:7, size:9}
execute as @e[type=interaction, tag=brewing_stand] at @s on attacker run function village:loot_table {i:8, size:6}
execute as @e[type=interaction, tag=smithing_table] at @s on attacker run function village:loot_table {i:9, size:8}
execute as @e[type=interaction, tag=grindstone] at @s on attacker run function village:loot_table {i:10, size:21}
execute as @e[type=interaction, tag=plains] at @s on attacker run function village:loot_table {i:11, size:11}
execute as @e[type=interaction, tag=desert] at @s on attacker run function village:loot_table {i:12, size:9}
execute as @e[type=interaction, tag=acacia] at @s on attacker run function village:loot_table {i:13, size:11}
execute as @e[type=interaction, tag=taiga] at @s on attacker run function village:loot_table {i:14, size:13}
execute as @e[type=interaction, tag=snowy] at @s on attacker run function village:loot_table {i:15, size:11}


execute as @e[type=interaction] run data modify entity @s attack set value {}