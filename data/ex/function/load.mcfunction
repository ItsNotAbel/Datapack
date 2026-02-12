worldborder set 1000
worldborder center 0.0 0.0

# Set Nether worldborder to match Overworld (1:8 scale)
execute in minecraft:the_nether run worldborder set 1000
execute in minecraft:the_nether run worldborder center 0.0 0.0

schedule function ex:ric 1800t
execute positioned 0.0 0.0 0.0 run setworldspawn ~ ~ ~

# Disable drops
gamerule entity_drops false
gamerule block_drops false
gamerule mob_drops false
gamerule tnt_explodes false
gamerule natural_health_regeneration false




