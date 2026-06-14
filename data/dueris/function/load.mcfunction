# Initialize scoreboard objectives for tracking player joins
# minecraft.custom:minecraft.leave_game increments when a player leaves the server.
# When they rejoin, their score is 1 or more, allowing us to detect the join.
scoreboard objectives add dueris.leaves minecraft.custom:minecraft.leave_game
