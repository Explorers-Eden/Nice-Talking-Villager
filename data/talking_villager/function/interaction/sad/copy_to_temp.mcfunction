execute store result score $villager_msg eden.technical run random value 1..2

$execute if score $villager_msg eden.technical matches 1 run data modify storage eden:temp villager.talking.msg set from storage eden:dialogue_db villager.sad.raid.$(id)
$execute if score $villager_msg eden.technical matches 2 run data modify storage eden:temp villager.talking.msg set from storage eden:dialogue_db villager.sad.taken.$(id)
