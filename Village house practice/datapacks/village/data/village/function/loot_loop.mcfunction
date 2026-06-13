execute store result score j variables run data get storage minecraft:data it.j

$execute unless score j variables matches $(max).. as @e[type=marker] at @s run function village:change_item with storage data loot[$(i)].table[$(j)]
$execute if score j variables matches $(max).. as @e[type=marker] at @s run data modify entity @e[type=item_frame, sort=nearest, limit=1] Item set value {id:""}
execute as @e[type=marker] at @s run tp @s ~1 ~ ~
execute as @e[type=marker] at @s if block ~ ~ ~ oak_log run tp @s ~-4 ~-1 ~

scoreboard players add j variables 1
execute store result storage minecraft:data it.j int 1.0 run scoreboard players get j variables

execute if score j variables matches ..21 run function village:loot_loop with storage data it