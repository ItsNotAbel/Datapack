# Play the pickup sound
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1

# Schedule the next execution of this function
schedule function ex:ric 90s

# Spawn loot and assign ownership per player (uses helper to prevent overwrites)
execute as @a at @s run function ex:spawn_loot



