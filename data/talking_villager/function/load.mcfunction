##default technical scoreboard
scoreboard objectives add eden.technical dummy

##remove temp storage
data remove storage eden:temp villager.talking

##create database
execute unless data storage eden:dialogue_db villager run function talking_villager:database/create

##init schedules
schedule function talking_villager:run 5s