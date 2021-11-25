-- Written by Ovokalia-MoonGuard in 2021

cards = {}
level = "ch"
for i = 1, 20 do
  setVar(args, "w", "card", "NO")
  effect("run_item_workflow", args, level, "card", "" .. i)
  if getVar(args, "w", "card") == "YES" then
    table.insert(cards, "" .. i)
    level = "si"
  end
end
