##default technical scoreboard
scoreboard objectives add eden.technical dummy

##remove temp storage
data remove storage eden:temp villager.talking

##init schedules
schedule function talking_villager:run 2s