deck = getVar(args, "c", "deck")
decks = {"subterfuge", "dominos", "dental", "reluctant", "custom", "subterfuge"}
found = 0
for k,v in pairs(decks) do
  if deck == v then
    found = 1
    deck = decks[k+1]
    break
  end
end
if found == 0 then
  deck = decks[1]
end
setVar(args, "c", "deck", deck)


