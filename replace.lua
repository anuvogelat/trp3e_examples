-- Written by Ovokalia-MoonGuard in 2020

-- Assumes the findValue is in "findValue" and the replaceValue is in "replaceValue". Will replace the string in "paragraph".
-- Assign the find and replace value NONE before the asynchronous update, this way it can be checked that the user didn't cancel.

findValue = getVar(args, "o", "findValue")
if findValue == "NONE" then
  return
end
replaceValue = getVar(args, "o", "replaceValue")
if replaceValue == "NONE" then
  return
end
paragraph1 = getVar(args, "o", "paragraph")
paragraph1 = paragraph1:gsub(findValue, replaceValue)
setVar(args, "o", "paragraph" .. page, paragraph1)
