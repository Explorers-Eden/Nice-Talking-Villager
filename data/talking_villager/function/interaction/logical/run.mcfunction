execute as @n[type=villager,tag=eden.mood.logical] unless data entity @s CustomName run data modify storage eden:temp villager.talking.name set value Villager
execute as @n[type=villager,tag=eden.mood.logical] if data entity @s CustomName run data modify storage eden:temp villager.talking.name set from entity @s CustomName
execute as @n[type=villager,tag=eden.mood.logical] if data entity @s CustomName.text run data modify storage eden:temp villager.talking.name set from entity @s CustomName.text

execute store result storage eden:temp villager.talking.id int 1 run random value 1..100
function talking_villager:interaction/logical/copy_to_temp with storage eden:temp villager.talking

execute unless items entity @s weapon.* #eden:villager/invalid_for_talking run function talking_villager:send_msg with storage eden:temp villager.talking

advancement revoke @s only talking_villager:logical