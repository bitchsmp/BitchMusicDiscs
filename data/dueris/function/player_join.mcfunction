# Ensure player has the joined tag so they are not detected as first-join again
tag @s add dueris.joined

# Reset/set the leave counter to 0 so they aren't processed again on subsequent ticks
scoreboard players set @s dueris.leaves 0

# --- Template/Placeholder Join Commands ---
# Add any commands you want to execute for the player when they join below:

# Example: Display a welcome message to the joining player
tellraw @s [{"text":"Welcome to the server, ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":"!","color":"gray"}]
recipe give @s *
recipe take @s[name=!Pete] dueris:cocaine
recipe take @s[name=!Pete] dueris:methamphetamine
recipe take @s[name=!Pete] dueris:methamphetamine_enhanced
recipe take @s[name=!Pete] dueris:methamphetamine_pure


