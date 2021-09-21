-- http://www.lua.org/pil/1.html

-- defines a factorial function
function factorial (n)
  if n == 0 then
    return 1
  else
    return n * factorial(n-1)
  end
end

print "enter a number:"
a = io.read("*number")
print(factorial(a))
