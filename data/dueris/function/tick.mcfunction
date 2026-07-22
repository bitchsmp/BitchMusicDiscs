# Check for players joining the server for the first time
# (They don't have the dueris.joined tag yet)
execute as @a[tag=!dueris.joined] run function dueris:player_join

# Check for returning players who rejoined the server
# (They have a dueris.leaves score of 1 or more)
execute as @a[scores={dueris.leaves=1..}] run function dueris:player_join


# Greatbow Tick Loop
execute as @e[type=arrow,tag=dueris.greatbow] at @s run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=dueris.greatbow] at @s run data modify entity @s crit set value false
execute as @e[type=arrow,tag=dueris.greatbow] at @s if entity @s[nbt={inGround:1b}] run function dueris:greatbow
execute as @e[type=arrow,tag=dueris.greatbow_weak] at @s run data modify entity @s damage set value 3
