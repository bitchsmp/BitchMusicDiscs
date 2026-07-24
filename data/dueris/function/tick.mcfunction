# Check for players joining the server for the first time
# (They don't have the dueris.joined tag yet)
execute as @a[tag=!dueris.joined] run function dueris:player_join

# Check for returning players who rejoined the server
# (They have a dueris.leaves score of 1 or more)
execute as @a[scores={dueris.leaves=1..}] run function dueris:player_join


# Greatbow Tick Loop
execute as @e[tag=dueris.greatbow,type=#arrows] at @s run function dueris:greatbow
execute as @e[tag=dueris.greatbow,type=#arrows] at @s if entity @s[nbt={inGround:1b}] run function dueris:greatbow_land
execute as @e[tag=dueris.greatbow_weak,type=#arrows] at @s run data modify entity @s damage set value 3
execute as @e[tag=dueris.greatbow,type=#arrows] at @s run data modify entity @s damage set value 7
