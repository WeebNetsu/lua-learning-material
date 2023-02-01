--[[ 
    module: lua file that returns a single table when called
    package: collection of modules
 ]]

local mod = require("example") -- imports the example.lua module we created
-- mod will replace sample, so the benifit of the above method is that you don't need to
-- know the name of the table being returned
print(mod.say_hi())
print(mod.say_hi("Jack"))
print(mod.sum(20, 70))

-- THE BELOW IS THE SECOND WAY TO USE A CUSTOM MODULE
require("example")

print(sample.say_hi())
print(sample.say_hi("Jack"))
print(sample.sum(20, 70))