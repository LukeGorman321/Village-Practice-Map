execute store result score rotation variables run random value 1..4
$execute if score rotation variables matches 1 run place template $(house) 0 -60 5
$execute if score rotation variables matches 2 run place template $(house) 10 -60 5 clockwise_90
$execute if score rotation variables matches 3 run place template $(house) 0 -60 15 counterclockwise_90
$execute if score rotation variables matches 4 run place template $(house) 10 -60 15 180

$execute if score mode variables matches 0 run fill 7 -60 -5 4 -60 -5 $(workstation)
$execute if score mode variables matches 0 run setblock 7 -62 -5 $(workstation)
execute unless score mode variables matches 0 run fill 7 -60 -5 4 -60 -5 oak_log[axis=x]
execute if score mode variables matches 1 run fill 5 -60 -5 6 -60 -5 chest
execute if score mode variables matches 2 run fill 5 -60 -5 6 -60 -5 crafting_table
execute if score mode variables matches 3 run fill 5 -60 -5 6 -60 -5 white_bed[facing=north, part=head]
execute if score mode variables matches 3 run fill 5 -60 -4 6 -60 -4 white_bed[facing=north, part=foot]
execute if score mode variables matches 4 run fill 5 -60 -5 6 -60 -5 flower_pot
execute if score mode variables matches 5 run fill 5 -60 -5 6 -60 -5 furnace

execute unless score mode variables matches 0 run data modify entity @e[limit=1, tag=no] item set value {id:"barrier"}
execute if score mode variables matches 0 run data modify entity @e[limit=1, tag=no] item set value {}


fill -5 -60 0 21 -30 21 air replace jigsaw


