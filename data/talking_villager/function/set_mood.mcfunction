execute store result score $mood eden.technical run random value 1..12

execute if score $mood eden.technical matches 1 run tag @s add eden.mood.angry
execute if score $mood eden.technical matches 2 run tag @s add eden.mood.curious
execute if score $mood eden.technical matches 3 run tag @s add eden.mood.disgusted
execute if score $mood eden.technical matches 4 run tag @s add eden.mood.excited
execute if score $mood eden.technical matches 5 run tag @s add eden.mood.frightened
execute if score $mood eden.technical matches 6 run tag @s add eden.mood.happy
execute if score $mood eden.technical matches 7 run tag @s add eden.mood.logical
execute if score $mood eden.technical matches 8 run tag @s add eden.mood.neutral
execute if score $mood eden.technical matches 9 run tag @s add eden.mood.religious
execute if score $mood eden.technical matches 10 run tag @s add eden.mood.sad
execute if score $mood eden.technical matches 11 run tag @s add eden.mood.sarcastic
execute if score $mood eden.technical matches 12 run tag @s add eden.mood.surprised

tag @s add eden.mood.set