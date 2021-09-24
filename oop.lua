--[[
-- Some examples for OOP in lua through metatables and metamethods mechanisims.
]]

Thing = {}

function Thing:new ()
  newObj = { id = 0, name = 'thing' }
  self.__index = self
  return setmetatable(newObj, self)
end

function Thing:setId(_id)
  self.id = _id
end

function Thing:setName(_name)
  self.name = _name
end

function Thing:print()
  print("I'm (" .. self.name .. ") and my id is: " .. self.id)
end

book = Thing:new()
book:setId(100)
book:setName('The good book')

book:print()


Computer = Thing:new()

Computer:setId(938430)
Computer:setName('Laptop')
Computer:print()

function Computer:promot()
  io.write("> What's your command? \n> ")
  cmd = io.read()
  os.execute(cmd)
end

Computer:promot()
