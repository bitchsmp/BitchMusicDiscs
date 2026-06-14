# Check for players joining the server for the first time
# (They don't have the dueris.joined tag yet)
execute as @a[tag=!dueris.joined] run function dueris:player_join

# Check for returning players who rejoined the server
# (They have a dueris.leaves score of 1 or more)
execute as @a[scores={dueris.leaves=1..}] run function dueris:player_join
