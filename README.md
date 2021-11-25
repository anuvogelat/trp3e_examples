# trp3e_examples
Scripts to perform specific tasks using Total RP 3 Extended:

stringreplacement.lua - shows how to replace characters in campaign variable "text" and write the result back to "translated"

toggle.lua - shows how to take campaign variable "deck" and cycle to a list of options (in this case, subterfuge, dominos, dental, reluctant and custom)

highscore.lua - shows how to manage a list of scores of other players and replace an entry with a newer entry. It reads the list scored in the campaign variable highscores, looks for the player whose name matches the TRP3_SIGNAL ${event.3} value stored in campaign variable eventSource and replaces their score with the score stored in campaign variable eventScore. After this the highscores variable is updated with the result. It also changes the - in the name of the player with 'of'

eventhandling.lua - shows how to read a string and convert it into multiple variables. This is useful if you need more than two values transferred with TRP3_SIGNAL. It assumes the string is in the format variable1=value1,variable2=value2,variable3=value3 etc. Currently the values can't contain a ',' or an '=', although I may update it to allow these to be escaped. It reads the string from the campaign variable eventValue and stored the values directly into the names of the variables. It is, of course, possible to use the .. operator to prepend them with a fixed string. 

replace.lua - Shows how to replace a value in a string called paragraph, where the findValue and replaceValue are in separate strings, usually collected using the Prompt For Input effect. It assumes they have been assigned NONE before the effect, so we can detect if the user canceled out of the flow.

deck.lua - The code for a deck of cards where one card is drawn randomly from the container that this is the onUse for. Cards need to have a card workflow that assigns YES to the workflow variable "card" and a "draw" workflow that consumes itself and adds the same card to All Inventory. Other effects can be added.
