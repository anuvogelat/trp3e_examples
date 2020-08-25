scorelist = getVar(args, "c", "highscores")
opponent = getVar(args, "c", "eventSource")
opponent = opponent:gsub("[%-]", " of ")
opponentScore = getVar(args, "c", "eventScore")
opponentEntry = "{p}" .. opponent .. " - "
opponentLocation = scorelist:find(opponentEntry)
if opponentLocation == nil then
  sl = scorelist .. opponentEntry  .. opponentScore .. "{/p}"
  setVar(args, "c", "highscores", sl)
else
  endLocation = scorelist:find("{/p}", opponentLocation)
  sl = scorelist:sub(1, opponentLocation - 1) .. opponentEntry
  sl = sl .. opponentScore .. "{/p}" .. scorelist:sub(endLocation + 4)
  setVar(args, "c", "highscores", sl)
end
