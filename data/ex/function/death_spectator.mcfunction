# Turn players who die into spectators
execute as @a[nbt={Health:0.0f}] run gamemode spectator @s

# Check if only one player is alive and show them a win screen (only once)
execute if score #game_over state matches 0 if entity @a[gamemode=!spectator] unless entity @a[gamemode=!spectator,limit=1,sort=furthest] run function ex:win_screen