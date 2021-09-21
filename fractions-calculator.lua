-- modified and expanded from:
-- https://learnxinyminutes.com/docs/lua/

print "> Enter first fraction in sequence .."
io.write "> "
a1 = io.read()
io.write "> "
b1 = io.read()

print "> Enter second fraction in sequence .."
io.write "> "
a2 = io.read()
io.write "> "
b2 = io.read()

f1 = { a = tonumber(a1), b = tonumber(b1) }
f2 = { a = tonumber(a2), b = tonumber(b2) }

metafaction = {}
function metafaction.__add(x, y)
  local sum = {}
  sum.b = x.b * y.b
  sum.a = x.a * y.b + x.b * y.a
  return sum
end


setmetatable(f1, metafaction)
setmetatable(f2, metafaction)

sum = f1 + f2
io.write("\n> The total = ", tostring(sum.a), " / ", tostring(sum.b), "\n")
