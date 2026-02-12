playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1

# Shrink the worldborder from 500 to 250 over 300 seconds
worldborder set 100 6000
tellraw @a [{"text":"World border is shrinking!","color":"green","bold":true}]

# Shrink the worldborder in the Nether (1:8 scale)
execute in minecraft:the_nether run worldborder set 50 6000

# Mark this event as triggered so it only happens once
scoreboard players set #wb_shrunk state 1
