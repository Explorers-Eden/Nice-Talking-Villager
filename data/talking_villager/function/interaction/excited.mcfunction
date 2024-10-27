data modify storage eden:temp villager.talking.name set value '{"bold":false,"color":"#FFE6B5","italic":false,"text":"Villager"}'
execute at @s if data entity @n[type=villager,tag=eden.mood.angry] CustomName run data modify storage eden:temp villager.talking.name set from entity @n[type=villager,tag=eden.mood.angry] CustomName

execute store result score $villager_msg eden.technical run random value 1..3

execute if score $villager_msg eden.technical matches 1 run function talking_villager:messages/excited/iron_golem
execute if score $villager_msg eden.technical matches 2 run function talking_villager:messages/excited/trading
execute if score $villager_msg eden.technical matches 3 run function talking_villager:messages/excited/village

execute unless items entity @s weapon.* #eden:villager/invalid_for_talking run function talking_villager:send_msg with storage eden:temp villager.talking

advancement revoke @s only talking_villager:excited