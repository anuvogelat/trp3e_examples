-- Written by Ovokalia-MoonGuard in 2021

if #cards > 0 then
  effect("run_item_workflow", args, level, "draw", cards[math.random(1, #cards)])
else
  for i = 1, 20 do
    effect("item_add", args, args.object.id .. " card" .. i, "1", false, "self")
  end
end
