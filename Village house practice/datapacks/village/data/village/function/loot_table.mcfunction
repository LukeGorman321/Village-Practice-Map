summon marker 4.5 -54.5 -14.5

$data modify storage data it.i set value $(i)
data modify storage data it.j set value 0
$data modify storage data it.max set value $(size)
function village:loot_loop with storage data it

execute as @e[type=marker] run kill @s