data modify storage eden:temp villager.talking.name set value '{"bold":false,"color":"#FFE6B5","italic":false,"text":"Villager"}'
execute at @s if data entity @n[type=villager,tag=eden.mood.angry] CustomName run data modify storage eden:temp villager.talking.name set from entity @n[type=villager,tag=eden.mood.angry] CustomName

execute store result score $villager_msg eden.technical run random value 1..20

execute if score $villager_msg eden.technical matches 1 run function talking_villager:messages/angry/builds
execute if score $villager_msg eden.technical matches 2 run function talking_villager:messages/angry/cats
execute if score $villager_msg eden.technical matches 3 run function talking_villager:messages/angry/creeper
execute if score $villager_msg eden.technical matches 4 run function talking_villager:messages/angry/daily_life
execute if score $villager_msg eden.technical matches 5 run function talking_villager:messages/angry/daylength
execute if score $villager_msg eden.technical matches 6 run function talking_villager:messages/angry/emeralds
execute if score $villager_msg eden.technical matches 7 run function talking_villager:messages/angry/kids
execute if score $villager_msg eden.technical matches 8 run function talking_villager:messages/angry/location
execute if score $villager_msg eden.technical matches 9 run function talking_villager:messages/angry/minecarts
execute if score $villager_msg eden.technical matches 10 run function talking_villager:messages/angry/misc
execute if score $villager_msg eden.technical matches 11 run function talking_villager:messages/angry/neighbor
execute if score $villager_msg eden.technical matches 12 run function talking_villager:messages/angry/nitwit
execute if score $villager_msg eden.technical matches 13 run function talking_villager:messages/angry/no_horse
execute if score $villager_msg eden.technical matches 14 run function talking_villager:messages/angry/phantom
execute if score $villager_msg eden.technical matches 15 run function talking_villager:messages/angry/pillager
execute if score $villager_msg eden.technical matches 16 run function talking_villager:messages/angry/player
execute if score $villager_msg eden.technical matches 17 run function talking_villager:messages/angry/protection
execute if score $villager_msg eden.technical matches 18 run function talking_villager:messages/angry/stealing
execute if score $villager_msg eden.technical matches 19 run function talking_villager:messages/angry/wandering_trader
execute if score $villager_msg eden.technical matches 20 run function talking_villager:messages/angry/zombie_villager

execute unless items entity @s weapon.* #eden:villager/invalid_for_talking run function talking_villager:send_msg with storage eden:temp villager.talking

advancement revoke @s only talking_villager:angry