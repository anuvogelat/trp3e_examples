# trp3e_examples
Scripts to perform specific tasks using Total RP 3 Extended:

stringreplacement.lua - shows how to replace characters in campaign variable "text" and write the result back to "translated"

toggle.lua - shows how to take campaign variable "deck" and cycle to a list of options (in this case, subterfuge, dominos, dental, reluctant and custom)

highscore.lua - shows how to manage a list of scores of other players and replace an entry with a newer entry. It reads the list scored in the campaign variable highscores, looks for the player whose name matches the TRP3_SIGNAL ${event.3} value stored in campaign variable eventSource and replaces their score with the score stored in campaign variable eventScore. After this the highscores variable is updated with the result. It also changes the - in the name of the player with 'of'
