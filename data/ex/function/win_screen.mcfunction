# Display a win screen for the last player alive
execute as @a[gamemode=!spectator] run title @s title {"text":"You Win!","color":"gold","bold":true}
execute as @a[gamemode=!spectator] run title @s subtitle {"text":"Congratulations!","color":"yellow"}

# Mark game as over so this doesn't run again
scoreboard players set #game_over state 1