# Count down every tick
execute as @a[scores={Timer=1..}] run scoreboard players remove @s Timer 1

# Convert Timer ticks to seconds and minutes
scoreboard players operation @a Seconds = @a Timer
scoreboard players operation @a Seconds %= #const_1200 const
scoreboard players operation @a Seconds /= #const_20 const

scoreboard players operation @a Minutes = @a Timer
scoreboard players operation @a Minutes %= #const_72000 const
scoreboard players operation @a Minutes /= #const_1200 const

scoreboard players operation @a Hours = @a Timer
scoreboard players operation @a Hours /= #const_72000 const

# Display the timer as Hours:Minutes:Seconds with zero‑padding (bold + green)
execute as @a if score @s Minutes matches ..9 if score @s Seconds matches ..9 run title @s actionbar [{"text":"","bold":true,"color":"green","extra":[{"score":{"name":"@s","objective":"Hours"}},{"text":":"},{"text":"0"},{"score":{"name":"@s","objective":"Minutes"}},{"text":":"},{"text":"0"},{"score":{"name":"@s","objective":"Seconds"}}]}]
execute as @a if score @s Minutes matches 10.. if score @s Seconds matches ..9 run title @s actionbar [{"text":"","bold":true,"color":"green","extra":[{"score":{"name":"@s","objective":"Hours"}},{"text":":"},{"score":{"name":"@s","objective":"Minutes"}},{"text":":"},{"text":"0"},{"score":{"name":"@s","objective":"Seconds"}}]}]
execute as @a if score @s Minutes matches ..9 if score @s Seconds matches 10.. run title @s actionbar [{"text":"","bold":true,"color":"green","extra":[{"score":{"name":"@s","objective":"Hours"}},{"text":":"},{"text":"0"},{"score":{"name":"@s","objective":"Minutes"}},{"text":":"},{"score":{"name":"@s","objective":"Seconds"}}]}]
execute as @a if score @s Minutes matches 10.. if score @s Seconds matches 10.. run title @s actionbar [{"text":"","bold":true,"color":"green","extra":[{"score":{"name":"@s","objective":"Hours"}},{"text":":"},{"score":{"name":"@s","objective":"Minutes"}},{"text":":"},{"score":{"name":"@s","objective":"Seconds"}}]}]

# Detect when the timer reaches 0
execute as @a if score @s Timer matches ..0 run gamemode spectator @a



# Trigger a one-time worldborder shrink at 1:30:00 remaining (108,000 ticks)
execute if score #wb_shrunk state matches 0 if entity @a[scores={Timer=108000}] run function ex:shrink_border

# Keep hunger full
effect give @a saturation 2 0 true

# Slow natural healing: 1 HP every 10 seconds
execute as @a run scoreboard players remove @s HealTimer 1
execute as @a[scores={HealTimer=..0}] run effect give @s instant_health 1 0 true
execute as @a[scores={HealTimer=..0}] run scoreboard players set @s HealTimer 100

# Lock dropped items to the player who dropped them permanently
execute as @e[type=item] if data entity @s Thrower run data modify entity @s Owner set from entity @s Thrower