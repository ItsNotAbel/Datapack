# Create the scoreboards
scoreboard objectives add time_left dummy "Time Left"
scoreboard objectives add players_left dummy "Players Left"

# Initialize the time_left scoreboard to 2 hours (7200 seconds)
scoreboard players set @a time_left 7200

# Initialize the players_left scoreboard to the number of players
execute store result score global players_left run execute as @a run scoreboard players add global players_left 1

# Decrement time_left every second (to be run in a tick function)
execute as @a[scores={time_left=1..}] run scoreboard players remove @s time_left 1

# Decrement players_left when a player dies (to be run in a death event function)
execute as @a[nbt={Health:0}] run scoreboard players remove global players_left 1