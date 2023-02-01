--[[ 
    NOTE: Lua is NOT an OOP language, it is a procedural/functional programming language
    thus there are not TRUE classes in Lua, but it can be simulated tables
 ]]

local Pet = {
    name = "",
    status = "hungry",
    points = 0,
}

function Pet:new (name) -- constructor/initializer method
    setmetatable({}, Pet)
    self.name = name
    Pet.status = "hungry"
    Pet.points = 0

    return self
end

function Pet:feed()
    print(self.name .. " was fed.")
    self.status = "Happy"
    self.points = self.points + 1
end

function Pet:showStatus()
    print(self.name .. " is " ..  self.status)
end

local cat = Pet:new("Ginger") -- assign cat to the object
cat:feed() -- use a function from the Pet "class"
print(cat.points)
cat:showStatus()

local parrot = Pet:new("Jack") -- assign cat to the object
print(parrot.points)

-- THE BELOW IS AN EXAMPLE OF INHERITANCE
local Dog = Pet:new() -- make Dog inherit from Pet
function Dog:new(name, breed)
    setmetatable({}, Dog)
    self.name = name
    Dog.status = "hungry"
    Dog.points = 0
    Dog.loyalty = 0
    Dog.breed = breed

    return self
end

function Dog:speak() -- new function for Dog class
    print("WOOF WOOF!")
end

function Dog:feed() -- overwrite existing functions
    print(self.name .. " was fed")
    self.status = "Happy"
    self.loyalty = self.loyalty + 5
    self.points = self.points + 1
end

local poodle = Dog:new("Jesse", "poodle")
poodle:speak()
poodle:feed()
poodle:showStatus() -- function inherited from Pet class