
# Create objectives for countdown timer
scoreboard objectives add Timer dummy "Countdown Timer"
scoreboard objectives add Hours dummy
scoreboard objectives add Minutes dummy
scoreboard objectives add Seconds dummy
scoreboard objectives add const dummy
scoreboard objectives add state dummy

# Initialize constants (ticks)
scoreboard players set #const_20 const 20
scoreboard players set #const_1200 const 1200
scoreboard players set #const_72000 const 72000

# Initialize event/state flags
scoreboard players set #wb_shrunk state 0
scoreboard players set #game_over state 0

# Slow heal timer (ticks down from 200 = 10 seconds)
scoreboard objectives add HealTimer dummy
scoreboard players set @a HealTimer 200

# Initialize the timer to 2 hours (144,000 ticks)
scoreboard players set @a Timer 144000

effect give @a saturation infinite 0 true

schedule function ex:delay_30s 30s



