result = getVar(args, "c", "eventValue")
for variable in result:gmatch("[^,]+", result)
do 
  count = 0
  for entry in variable:gmatch("[^=]+", variable)
  do
    if count == 1 then
      value = entry
      setVar(args, "c", name, entry)
    end
    if count == 0 then
      name = entry
      count = 1
    end
  end
end

