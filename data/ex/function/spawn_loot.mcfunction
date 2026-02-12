# Spawn loot for this player
loot spawn ~ ~1 ~ loot ex:nice/items

# Assign ownership only to newly spawned (untagged) items nearby
execute as @e[type=item,distance=..3,tag=!assigned] run data modify entity @s Owner set from entity @p UUID
execute as @e[type=item,distance=..3,tag=!assigned] run tag @s add assigned
