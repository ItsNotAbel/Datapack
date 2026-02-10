# Give each player an independent random item from the loot table, then reschedule
execute as @a run loot give @s loot ex:random_items
# Reschedule this function to run again in 1800 ticks (90s = 1.5 minutes)
schedule function ex:give_random 1800t
